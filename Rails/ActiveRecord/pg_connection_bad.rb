module Rails
  module ActiveRecord
    class PgConnectionBad
      def usage
        <<~MONKEY_PATCH.strip
          require 'active_record/connection_adapters/postgresql_adapter'

          class ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
            MAX_QUERY_RETRIES = 1

            alias_method :exec_query_without_retry, :exec_query

            def exec_query(*args)
              res = exec_query_without_retry(*args)
              @retry_counter = nil
              res
            rescue ActiveRecord::StatementInvalid => ex
              unless active?
                @retry_counter ||= 0
                warn "Reconnecting to database after PGError! Try ##{@retry_counter + 1}/#{MAX_QUERY_RETRIES} #{ex.message}}"

                if @retry_counter < MAX_QUERY_RETRIES
                  @retry_counter += 1
                  reconnect! rescue nil
                  retry if active?
                end
              end

              @retry_counter = 0
              raise
            end
          end
        MONKEY_PATCH
      end

      def reproduce
        <<~REPRODUCE.strip
          p `ActiveModel`.count

          Bundler.with_clean_env do
            system('brew services stop postgresql')
            system('brew services start postgresql')
            sleep 10
          end

          p `ActiveModel`.count
        REPRODUCE
      end
    end
  end
end
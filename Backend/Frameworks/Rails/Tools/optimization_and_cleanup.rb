# frozen_string_literal: true

module Frameworks
  module Rails
    module Tools
      class OptimizationAndCleanup
        CHECKLIST = [
          'TRACEROUTE',
          'RACK-MINI-PROFILER',
          'BULLET',
          'BRAKEMAN',
          'DEADWEIGHT',
          'RAILS_BEST_PRACTICES',
          'RUBOCOP',
          'RUBYCRITIC'
        ].freeze

        USED_FOR = {
          'TRACEROUTE' => 'route cleaning tool',
          'RACK-MINI-PROFILER' => 'finding bottlenecks of your applications',
          'BULLET' => 'kill all the N+1 queries',
          'BRAKEMAN' => 'a security analysis tool',
          'DEADWEIGHT' => 'cleaning unused CSS selectors',
          'RAILS_BEST_PRACTICES' => 'finding Rails specific code smells',
          'RUBOCOP' => 'reports style violations',
          'RUBYCRITIC' => 'static code analysis tools'
        }.freeze

        def show
          OptimizationAndCleanup::CHECKLIST.each do |list|
            pp "#{list} => #{USED_FOR[list]}"
          end
        end
      end

      # OptimizationAndCleanup.new().show
    end
  end
end

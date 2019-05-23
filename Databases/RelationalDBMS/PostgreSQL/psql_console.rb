module RelationalDBMS
  module PostgreSQL
    class PsqlConsole
      def show_config_file
        conntect_db
        Command.new('find a configuration file', 'SHOW config_file;')
      end

      private

      def conntect_db
        Command.new('connect to database', 'psql -U postgres')
      end
    end

    Command = Struct.new(:title, :command)
    # puts PsqlConsole.new().show_config_file
  end
end
module RelationalDBMS
  module PostgreSQL
    class PsqlConsole
      def conntect_db
        Command.new('connect to database', 'psql -U postgres')
      end
    end

    Command = Struct.new(:title, :command)
  end
end
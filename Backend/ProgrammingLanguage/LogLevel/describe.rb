# frozen_string_literal: true

module ProgrammingLanguage
  module LogLevel
    class Describe
      Level = Struct.new(:type, :meaning)

      TYPES = {
        trace: 'trace',
        debug: 'debug',
        info: 'info',
        warn: 'warn',
        error: 'error',
        fatal: 'fatal'
      }.freeze

      INFOS = [
        Level.new(
          TYPES[:trace],
          <<~MEANING.strip
            TODO
          MEANING
        ),

        Level.new(
          TYPES[:debug],
          <<~MEANING.strip
            The debug level should be used for detailed messages
            that assist in debugging. Typically, these logs are
            used by developers or system admins who need as much
            detail as possible about what might be going on in
            the system.
          MEANING
        ),

        Level.new(
          TYPES[:info],
          <<~MEANING.strip
            In the case of info-level logs, these provide information
            regarding normal application processing. This could be log
            information about services starting and stopping or
            application metrics
          MEANING
        ),

        Level.new(
          TYPES[:warn],
          <<~MEANING.strip
            Warnings indicate something's wrong. It might not be
            an error since the application may have recovered.
            Or, the warning may inform us of a rare business
            scenario we want to track
          MEANING
        ),

        Level.new(
          TYPES[:error],
          <<~MEANING.strip
            When we see errors, we know something failed. Perhaps
            a transaction was unable to update the database.
            Or maybe a dependency couldn't be reached.
            Overall the application still functions,
            but things aren't working properly
          MEANING
        ),

        Level.new(
          TYPES[:fatal],
          <<~MEANING.strip
            Fatal logs should only be used when something happens
            that causes the application to crash. This type of
            error may need support or intervention from the
            development team. It shouldn't be used for general
            business errors
          MEANING
        )
      ].freeze

      def self.yourself
        INFOS.each do |info|
          pp info
        end
      end

      pp Describe.yourself
    end
  end
end

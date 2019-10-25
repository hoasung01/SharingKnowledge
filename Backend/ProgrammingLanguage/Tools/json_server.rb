# frozen_string_literal: true

module ProgrammingLanguage
  module Tools
    class JsonServer
      def self.yourself
        <<~DESCRIBE.strip
          Get a full fake REST API with zero coding
          in less than 30 seconds (seriously)
          [reference: https://github.com/typicode/json-server]
        DESCRIBE
      end
    end
  end
end

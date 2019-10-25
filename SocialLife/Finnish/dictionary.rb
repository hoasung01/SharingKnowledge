# frozen_string_literal: true

module SocialLife
  module Finnish
    class Dictionary
      # TODO: refactor duplicated code with Vietnamese
      DICTIONARY_FILE = 'words.md'

      def show
        read_from("#{current_path}/#{DICTIONARY_FILE}")
      end

      private

      def read_from(file_path)
        File.open(file_path, 'r') do |f|
          f.each_line do |line|
            puts line
          end
        end
      end

      def current_path
        __dir__
      end
    end

    print Dictionary.new.show
  end
end

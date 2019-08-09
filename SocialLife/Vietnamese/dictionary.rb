module SocialLife
  module Vietnamese
    class Dictionary
      DICTIONARY_FILE = 'words.md'.freeze

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
        File.expand_path File.dirname(__FILE__)
      end
    end

    # print Dictionary.new().show
  end
end
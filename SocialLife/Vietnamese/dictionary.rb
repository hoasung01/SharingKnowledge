module SocialLife
  module Vietnamese
    class Dictionary
      def show
        current_path = File.expand_path File.dirname(__FILE__)

        File.open("#{current_path}/words.md", 'r') do |f|
          f.each_line do |line|
            puts line
          end
        end
      end
    end
    print Dictionary.new().show
  end
end
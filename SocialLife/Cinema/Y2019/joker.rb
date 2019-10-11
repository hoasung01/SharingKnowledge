module SocialLife
  module Cinema
    module Y2019
      class Joker
        LINE_NUMBER = 16

        FILES = {
          file_name: 'myself_lession.md',
        }.freeze

        def info
          director = Director.new('Todd Phillips')
        end

        # TODO: refactor duplicated code
        def reviews
          puts '*' * LINE_NUMBER
          puts "Director: #{info.name}"
          puts '====Reviews:===='
          FILES.each do |key, value|
            read_from("#{current_path}/Joker/#{value}")
          end
          puts '*' * LINE_NUMBER
        end

        Director = Struct.new(:name)

        private

        def current_path
          File.expand_path("../../Reviews", __FILE__)
        end

        def read_from(file_path)
          File.open(file_path, 'r') do |f|
            f.each_line do |line|
              puts line
            end
          end
        end
      end
      print Joker.new().reviews
    end
  end
end
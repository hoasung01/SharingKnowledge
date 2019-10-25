# frozen_string_literal: true

module SocialLife
  module Cinema
    module Y2019
      class Parasite
        LINE_NUMBER = 16

        FILES = {
          part1: 'part1.md',
          part2: 'part2.md',
          part3: 'part3.md',
          part4: 'part4.md'
        }.freeze

        def info
          director = Director.new('Bong Joon-ho')
        end

        def reviews
          puts '*' * LINE_NUMBER
          puts "Director: #{info.name}"
          puts '====Reviews:===='

          FILES.each do |_key, value|
            read_from("#{current_path}/Parasite/#{value}")
          end

          puts '*' * LINE_NUMBER
        end

        Director = Struct.new(:name)

        private

        def current_path
          File.expand_path('../Reviews', __dir__)
        end

        def read_from(file_path)
          File.open(file_path, 'r') do |f|
            f.each_line do |line|
              puts line
            end
          end
        end
      end
      print Parasite.new.reviews
    end
  end
end

# frozen_string_literal: true

module SocialLife
  module Cinema
    module Y2019
      class ItChap2
        LINE_NUMBER = 16

        FILES = {
          file_name: 'myself_lession.md'
        }.freeze

        def info
          director = Director.new('Andrés Muschietti')
        end

        # TODO: refactor duplicated code
        def reviews
          puts '*' * LINE_NUMBER
          puts "Director: #{info.name}"
          puts '====Reviews:===='
          FILES.each do |_key, value|
            read_from("#{current_path}/ItChap2/#{value}")
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
      print ItChap2.new.reviews
    end
  end
end

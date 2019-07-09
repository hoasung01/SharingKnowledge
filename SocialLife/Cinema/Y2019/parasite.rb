module SocialLife
  module Cinema
    module Y2019
      class Parasite
        def info
          director = Director.new('Bong Joon-ho')
        end

        def reviews
        end

        Director = Struct.new(:name)

        private

        def files
          Dir.glob("*.md") do |filename|
          end
        end
      end
    end
  end
end
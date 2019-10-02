module SocialLife
    module Cinema
      module Y2019
        class DarkPhoenix
          def info
            director = Director.new('Simon Kinberg')
          end
  
          Director = Struct.new(:name)
        end
      end
    end
  end
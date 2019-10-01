module SocialLife
    module Cinema
      module Y2019
        class EternalSunshineOfTheSpotlessMind
          def info
            director = Director.new('Michel Gondry')
          end
  
          Director = Struct.new(:name)
        end
      end
    end
  end
module SocialLife
    module Cinema
      module Y2019
        class SpidermanFarFromHome
          def info
            director = Director.new('Simon Kinberg')
          end
  
          Director = Struct.new(:name)
        end
      end
    end
  end
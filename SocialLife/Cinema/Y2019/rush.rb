module SocialLife
    module Cinema
      module Y2019
        class Rush2013
          def info
            director = Director.new('Ron Howard')
          end
  
          Director = Struct.new(:name)
        end
      end
    end
  end
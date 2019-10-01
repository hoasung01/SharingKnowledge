module SocialLife
    module Cinema
      module Y2019
        class TheProfessorAndTheMadman
          def info
            director = Director.new('Farhad Safinia')
          end
  
          Director = Struct.new(:name)
        end
      end
    end
  end
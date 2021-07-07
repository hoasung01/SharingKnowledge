module SocialLife
  module Cinema
    module Y2019
      class Dunkirk
        def info
          director = Director.new('Christopher Nolan')
        end

        Director = Struct.new(:name)
      end
    end
  end
end

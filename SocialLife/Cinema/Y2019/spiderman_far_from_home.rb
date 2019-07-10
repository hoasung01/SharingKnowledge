module SocialLife
  module Cinema
    module Y2019
      class SpidermanFarFromHome
        def info
          director = Director.new('Jon Watts')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
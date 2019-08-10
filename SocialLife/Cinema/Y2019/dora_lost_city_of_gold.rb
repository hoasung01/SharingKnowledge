module SocialLife
  module Cinema
    module Y2019
      class DoraLostCityOfGold
        def info
          director = Director.new('James Bobin')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
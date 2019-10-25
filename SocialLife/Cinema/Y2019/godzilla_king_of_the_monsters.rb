# frozen_string_literal: true

module SocialLife
  module Cinema
    module Y2019
      class GodzillaKingOfTheMonsters
        def info
          director = Director.new('Michael Dougherty')
        end

        Director = Struct.new(:name)
      end
    end
  end
end

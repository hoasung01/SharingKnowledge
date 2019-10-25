# frozen_string_literal: true

module SocialLife
  module Cinema
    module Y2019
      class TheFamilyMan
        def info
          director = Director.new('Brett Ratner')
        end

        Director = Struct.new(:name)
      end
    end
  end
end

module SocialLife
  module Cinema
    module Y2019
      class ItChap2
        def info
          director = Director.new('Andrés Muschietti')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
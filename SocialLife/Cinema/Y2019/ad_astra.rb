module SocialLife
  module Cinema
    module Y2019
      class AdAstra
        def info
          director = Director.new('James Gray')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
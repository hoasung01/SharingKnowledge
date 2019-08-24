module SocialLife
  module Cinema
    module Y2019
      class Exit
        def info
          director = Director.new('Lee Sang-geun')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
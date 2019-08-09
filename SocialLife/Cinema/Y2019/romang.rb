module SocialLife
  module Cinema
    module Y2019
      class Romang
        def info
          director = Director.new('Lee Chang-geun')
        end

        Director = Struct.new(:name)
      end
    end
  end
end
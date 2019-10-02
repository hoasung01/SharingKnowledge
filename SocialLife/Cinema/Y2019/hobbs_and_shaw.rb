module SocialLife
  module Cinema
    module Y2019
      class HobbsAndShaw
        def info
          director = Director.new('David Leitch')
        end

        Director = Struct.new(:name)
      end
    end
  end
end

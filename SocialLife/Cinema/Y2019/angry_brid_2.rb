module SocialLife
  module Cinema
    module Y2019
      class AngryBird2
        def info
          director = Director.new('Thurop Van Orman')
        end

        def reviews
          <<~REVIEW.strip
            a funny ever film so far! We should try to watch it
          REVIEW
        end

        Director = Struct.new(:name)
      end
    end
  end
end
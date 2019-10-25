# frozen_string_literal: true

module SocialLife
  module Cinema
    module Y2019
      class Crawl
        def info
          director = Director.new('Alexandre Aja')
        end

        Director = Struct.new(:name)
      end
    end
  end
end

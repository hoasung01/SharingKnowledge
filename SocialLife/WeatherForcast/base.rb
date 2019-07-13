module SocialLife
  module WeatherForcast
    class Base
      LIST = [
        'https://www.windy.com/',
        'https://www.wunderground.com/'
      ]
      def reference
        <<~REFERENCE.strip
          "#{LIST}"
        REFERENCE
      end
    end

    # puts Base.new().reference
  end
end
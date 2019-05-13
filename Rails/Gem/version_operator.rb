module Rails
  module Gem
    class VersionOperator
      def define
        <<~SAMPLE.strip
          gem('nokogiri', '~> 1.0')   # btw in this range (1.0..2.0)
          gem('nokogiri', '~> 1.5.0') # btw in this range (1.5.0..1.6.0)
          gem('nokogiri', '~> 1.5.3') # btw in this range (1.5.3..1.6.0)
        SAMPLE
      end
    end
  end
end
# frozen_string_literal: true

module Frameworks
  module Rails
    module Gem
      class VersionOperator
        def define
          <<~SAMPLE.strip
            '~1.0' => [1.0, 2.0]
            '~> 1.5.0' => [1.5.0, 1.6.0]
            '~> 1.5.3' => [1.5.3, 1.6.0]
          SAMPLE
        end
      end
    end
  end
end

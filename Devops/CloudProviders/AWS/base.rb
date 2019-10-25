# frozen_string_literal: true

module Devops
  module CloudProviders
    module AWS
      class Base
        def reference
          <<~REFERENCE.strip
            https://aws.amazon.com/
          REFERENCE
        end
      end
    end
  end
end

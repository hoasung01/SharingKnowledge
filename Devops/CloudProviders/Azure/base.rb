# frozen_string_literal: true

module Devops
  module CloudProviders
    module Azure
      class Base
        def reference
          <<~REFERENCE.strip
            https://azure.microsoft.com/en-us/
          REFERENCE
        end
      end
    end
  end
end

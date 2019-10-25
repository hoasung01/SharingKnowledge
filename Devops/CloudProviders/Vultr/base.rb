# frozen_string_literal: true

module Devops
  module CloudProviders
    module Vultr
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.vultr.com/
          REFERENCE
        end
      end
    end
  end
end

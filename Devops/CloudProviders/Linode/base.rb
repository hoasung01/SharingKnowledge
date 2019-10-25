# frozen_string_literal: true

module Devops
  module CloudProviders
    module Linode
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.linode.com/
          REFERENCE
        end
      end
    end
  end
end

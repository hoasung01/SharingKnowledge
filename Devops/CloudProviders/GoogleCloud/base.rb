module Devops
  module CloudProviders
    module GoogleCloud
      class Base
        def reference
          <<~REFERENCE.strip
            https://cloud.google.com/
          REFERENCE
        end
      end
    end
  end
end
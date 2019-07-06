module Devops
  module CloudProviders
    module DigitalOcean
      class Base
        def reference
          <<~REFERENCE.strip
            https://www.digitalocean.com/
          REFERENCE
        end
      end
    end
  end
end
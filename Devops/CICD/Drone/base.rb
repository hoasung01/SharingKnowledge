module Devops
  module CICD
    module Drone
      class Base
        def reference
          <<~REFERENCE.strip
            https://drone.io/
          REFERENCE
        end
      end
    end
  end
end
module Devops
  module InfrastructureAsCode
    module Containers
      module LXC
        class Base
          def reference
            <<~REFERENCE.strip
              https://linuxcontainers.org/
            REFERENCE
          end
        end
      end
    end
  end
end
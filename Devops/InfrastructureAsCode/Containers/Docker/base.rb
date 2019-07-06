module Devops
  module InfrastructureAsCode
    module Containers
      module Docker
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.docker.com/
            REFERENCE
          end
        end
      end
    end
  end
end
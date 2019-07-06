module Devops
  module InfrastructureAsCode
    module Containers
      module rkt
        class Base
          def reference
            <<~REFERENCE.strip
              https://coreos.com/rkt/
            REFERENCE
          end
        end
      end
    end
  end
end
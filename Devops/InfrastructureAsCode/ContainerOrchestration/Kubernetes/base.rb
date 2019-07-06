module Devops
  module InfrastructureAsCode
    module ContainerOrchestration
      module Kubernetes
        class Base
          def reference
            <<~REFERENCE.strip
              https://kubernetes.io/
            REFERENCE
          end
        end
      end
    end
  end
end
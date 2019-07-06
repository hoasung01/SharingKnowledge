module Devops
  module InfrastructureAsCode
    module ContainerOrchestration
      module DockerSwarm
        class Base
          def reference
            <<~REFERENCE.strip
              ttps://www.nomadproject.io/
            REFERENCE
          end
        end
      end
    end
  end
end
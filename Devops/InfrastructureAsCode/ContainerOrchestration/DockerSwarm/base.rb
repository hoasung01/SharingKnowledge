module Devops
  module InfrastructureAsCode
    module ContainerOrchestration
      module DockerSwarm
        class Base
          def reference
            <<~REFERENCE.strip
              https://docs.docker.com/engine/swarm/
            REFERENCE
          end
        end
      end
    end
  end
end
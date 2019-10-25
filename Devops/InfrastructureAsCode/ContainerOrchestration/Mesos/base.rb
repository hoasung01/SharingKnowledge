# frozen_string_literal: true

module Devops
  module InfrastructureAsCode
    module ContainerOrchestration
      module Mesos
        class Base
          def reference
            <<~REFERENCE.strip
              https://mesosphere.com/solutions/container-orchestration/
            REFERENCE
          end
        end
      end
    end
  end
end

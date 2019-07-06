module Devops
  module MonitorSoftwareAndInfrastructure
    module InfrastructureMonitoring
      module Datadog
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.datadoghq.com/
            REFERENCE
          end
        end
      end
    end
  end
end
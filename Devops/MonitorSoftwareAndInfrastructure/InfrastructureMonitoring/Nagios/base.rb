module Devops
  module MonitorSoftwareAndInfrastructure
    module InfrastructureMonitoring
      module Nagios
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.nagios.org/
            REFERENCE
          end
        end
      end
    end
  end
end
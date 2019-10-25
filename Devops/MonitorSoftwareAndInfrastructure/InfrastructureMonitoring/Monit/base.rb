# frozen_string_literal: true

module Devops
  module MonitorSoftwareAndInfrastructure
    module InfrastructureMonitoring
      module Monit
        class Base
          def reference
            <<~REFERENCE.strip
              https://mmonit.com/monit/
            REFERENCE
          end
        end
      end
    end
  end
end

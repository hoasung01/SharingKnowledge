# frozen_string_literal: true

module Devops
  module MonitorSoftwareAndInfrastructure
    module InfrastructureMonitoring
      module Zabbix
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.zabbix.com/
            REFERENCE
          end
        end
      end
    end
  end
end

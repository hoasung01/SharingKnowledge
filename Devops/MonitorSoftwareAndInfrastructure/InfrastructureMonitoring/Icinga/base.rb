# frozen_string_literal: true

module Devops
  module MonitorSoftwareAndInfrastructure
    module InfrastructureMonitoring
      module Icinga
        class Base
          def reference
            <<~REFERENCE.strip
              https://icinga.com/
            REFERENCE
          end
        end
      end
    end
  end
end

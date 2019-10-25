# frozen_string_literal: true

module Devops
  module MonitorSoftwareAndInfrastructure
    module ApplicationMonitoring
      module AppDynamics
        class Base
          def reference
            <<~REFERENCE.strip
              https://newrelic.com/
            REFERENCE
          end
        end
      end
    end
  end
end

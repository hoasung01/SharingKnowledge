# frozen_string_literal: true

module Devops
  module MonitorSoftwareAndInfrastructure
    module LogManagement
      module Graylog
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.graylog.org/
            REFERENCE
          end
        end
      end
    end
  end
end

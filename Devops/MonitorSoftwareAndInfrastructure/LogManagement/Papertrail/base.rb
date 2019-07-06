module Devops
  module MonitorSoftwareAndInfrastructure
    module LogManagement
      module Papertrail
        class Base
          def reference
            <<~REFERENCE.strip
              https://papertrailapp.com/
            REFERENCE
          end
        end
      end
    end
  end
end
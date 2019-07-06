module Devops
  module MonitorSoftwareAndInfrastructure
    module LogManagement
      module ELKStack
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.elastic.co/elk-stack
            REFERENCE
          end
        end
      end
    end
  end
end
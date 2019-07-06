module Devops
  module InfrastructureAsCode
    module ConfigurationManagement
      module Chef
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.chef.io/
            REFERENCE
          end
        end
      end
    end
  end
end
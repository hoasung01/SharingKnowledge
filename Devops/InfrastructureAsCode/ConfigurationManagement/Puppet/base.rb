module Devops
  module InfrastructureAsCode
    module ConfigurationManagement
      module Puppet
        class Base
          def reference
            <<~REFERENCE.strip
              https://puppet.com/solutions/configuration-management
            REFERENCE
          end
        end
      end
    end
  end
end
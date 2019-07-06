module Devops
  module InfrastructureAsCode
    module InfrastructureProvisioning
      module CloudFormation
        class Base
          def reference
            <<~REFERENCE.strip
              https://aws.amazon.com/cloudformation/
            REFERENCE
          end
        end
      end
    end
  end
end
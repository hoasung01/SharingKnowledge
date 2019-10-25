# frozen_string_literal: true

module Devops
  module InfrastructureAsCode
    module InfrastructureProvisioning
      module Terraform
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.terraform.io/
            REFERENCE
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module Devops
  module InfrastructureAsCode
    module ConfigurationManagement
      module Ansible
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.ansible.com/
            REFERENCE
          end
        end
      end
    end
  end
end

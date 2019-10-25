# frozen_string_literal: true

module Devops
  module InfrastructureAsCode
    module ConfigurationManagement
      module Salt
        class Base
          def reference
            <<~REFERENCE.strip
              https://www.saltstack.com/
            REFERENCE
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

module SoftwareDesign
  module DesignPrinciples
    module SolidPrinciple
      class OpenClosedPrinciple
        def define
          <<~DEFINE.strip
            Software entities (classes, modules, functions, etc.)
            should be open for extension, but closed for modification
          DEFINE
        end
      end
    end
  end
end

# A Class should be Open for Extension but Closed for Modification.

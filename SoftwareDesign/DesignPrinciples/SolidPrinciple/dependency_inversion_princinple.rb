# frozen_string_literal: true

module SoftwareDesign
  module DesignPrinciples
    module SolidPrinciple
      class DependencyInversionPrinciple
        def define
          <<~DEFINE.strip
            Dependency Inversion Principle states that:
            - High-level modules should not depend on low-level modules.
              Both should depend on abstractions (e.g. interfaces).
            - Abstractions should not depend on details (concrete implementations)
              instead should depend on abstractions.
          DEFINE
        end
      end
    end
  end
end


# A Class should depend on Abstraction, not Implementation
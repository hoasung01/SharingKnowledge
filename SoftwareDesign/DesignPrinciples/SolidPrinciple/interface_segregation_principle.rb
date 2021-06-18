# frozen_string_literal: true

module SoftwareDesign
  module DesignPrinciples
    module SolidPrinciple
      class InterfaceSegregationPrinciple
        def define
          <<~DEFINE.strip
            The Interface Segregation Principle states that clients should not be forced
            to implement interfaces they don't use. Instead of one fat interface many
            small interfaces are preferred based on groups of methods, each one serving one submodule.
          DEFINE
        end
      end
    end
  end
end


# Small Interface is better than Big Interface.
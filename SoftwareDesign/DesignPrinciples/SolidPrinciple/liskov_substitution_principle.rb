# frozen_string_literal: true

module SoftwareDesign
  module DesignPrinciples
    module SolidPrinciple
      class LiskovSubstitutionPrinciple
        def define
          <<~DEFINE.strip
            Liskov Substitution Principle states that in a computer program,
            if S is a subtype of T, then objects of type T may be
            replaced/substituted with any object of type S without altering any of
            the desirable properties of the program.
          DEFINE
        end
      end
    end
  end
end

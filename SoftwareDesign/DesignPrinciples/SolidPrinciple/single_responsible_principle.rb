module SoftwareDesign
  module DesignPrinciples
    module SolidPrinciple
      class SingleResponsiblePrinciple
        def define
          <<~DEFINE.strip
            The Single Responsibility Principle states that every module, class,
            or function should have responsibility over a single part of the
            functionality provided by the software, and that responsibility
            should be entirely encapsulated by the class, module or function.
          DEFINE
        end
      end
    end
  end
end
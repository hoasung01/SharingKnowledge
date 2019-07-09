module Computer
  module OperatingSystems
    module Unix
      class Base
        def define
          <<~DEFINE.strip
            Unix is a family of multitasking, multiuser computer
            operating systems that derive from the original
            AT&T Unix, development starting in the 1970s at
            the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others.
          DEFINE
        end
      end
    end
  end
end
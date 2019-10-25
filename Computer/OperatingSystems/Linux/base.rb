# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Linux
      class Base
        def define
          <<~DEFINE.strip
            Linux is a Unix-like computer operating system
            assembled under the model of free and open source
            software development and distribution.
          DEFINE
        end
      end
    end
  end
end

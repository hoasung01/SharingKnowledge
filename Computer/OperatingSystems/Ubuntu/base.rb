# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Ubuntu
      class Base
        def define
          <<~DEFINE.strip
            Ubuntu is a computer operating system based on the
            Debian Linux distribution and distributed as free and
            open source software, using its own desktop environment.
          DEFINE
        end
      end
    end
  end
end

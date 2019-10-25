# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Unix
      module Bash
        class Base
          def define
            <<~DEFINE.strip
              A Unix shell is a command-line interpreter or
              shell that provides a command line user interface
              for Unix-like operating systems. The shell is both
              an interactive command language and a scripting language,
              and is used by the operating system to control the
              execution of the system using shell scripts.
            DEFINE
          end

          def reference
            <<~REFERENCE.strip
              https://en.wikipedia.org/wiki/Bash_(Unix_shell)
            REFERENCE
          end

          def cheatshet
            <<~CHEATSHET.strip
              https://github.com/Idnan/bash-guide
            CHEATSHET
          end
        end
      end
    end
  end
end

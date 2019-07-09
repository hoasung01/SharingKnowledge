module Computer
  module OperatingSystems
    module Unix
      module Bash
        class StartupScripts < Base
          def excution_order_of_startup_files
            process = [
              step1 = Step.new(
                'When started as an interactive login shell',
                Context.new(
                  <<~DEFINE.strip
                    - Bash reads and executes /etc/profile (if it exists).
                      (Often this file calls /etc/bash.bashrc.)

                    - After reading that file,
                      it looks for ~/.bash_profile,
                      ~/.bash_login, and ~/.profile in that order,
                      and reads and executes the first one that exists and is readable.
                  DEFINE
                )
              )
              step2 = Step.new(
                'When a login shell exits',
                Context.new(
                  <<~DEFINE.strip
                    Bash reads and executes ~/.bash_logout (if it exists).
                  DEFINE
                )
              )
              step3 = Step.new(
                'When started as an interactive shell (but not a login shell)',
                Context.new(
                  <<~DEFINE.strip
                    Bash reads and executes /etc/bash.bashrc
                    and then ~/.bashrc (if it exists).
                    This may be inhibited by using the --norc option.
                    The --rcfile file option forces Bash to read
                    and execute commands from file instead of ~/.bashrc.
                  DEFINE
                )
              )
            ]
          end

          Step = Struct.new(:situation)
          Context = Struct.new(:context)
        end
      end
    end
  end
end
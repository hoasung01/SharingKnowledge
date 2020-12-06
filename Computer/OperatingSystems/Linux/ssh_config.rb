# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Linux
      class SshConfig < Base
        def instruction
          <<~INSTRUCTION
            	$ touch ~/.ssh/config && chmod 600 ~/.ssh/config
            	$ chmod 700 ~/.ssh/config
            		Host hostname1
            SSH_OPTION value
            SSH_OPTION value
          INSTRUCTION
        end
      end
    end
  end
end

# Host dev-worker-1
#   HostName 54.173.109.173
#   User ec2-user
#   IdentityFile ~/.ssh/dev.pem
#   IdentitiesOnly yes
#   StrictHostKeyChecking no

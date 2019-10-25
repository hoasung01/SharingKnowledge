# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Linux
      module OpenSource
        class Letsencrypt
          def define
            <<~DEFINE.strip
              To enable HTTPS on your website.
              Let’s Encrypt is a CA (Certificate Authority)
              https://letsencrypt.org
            DEFINE
          end
       end
      end
    end
  end
end

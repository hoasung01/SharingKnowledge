module Computer
  module OperatingSystems
    module Linux
      module OpenSource
         class Openldap
          def define
            <<~DEFINE.strip
              The Lightweight Directory Access Protocol, or LDAP,
              is a protocol for querying and modifying
              a X.500-based directory service running over TCP/IP.
              https://help.ubuntu.com/lts/serverguide/openldap-server.html
            DEFINE
          end
        end
      end
    end
  end
end
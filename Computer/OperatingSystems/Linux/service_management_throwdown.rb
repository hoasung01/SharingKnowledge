module Computer
  module OperatingSystems
    module Linux
      class ServiceManagementThrowdown < Base
        CATEGORIES = %w(Systemd SystemV(init) Upstart).freeze
      end
    end
  end
end
module Computer
  module OperatingSystems
    module Linux
      class FilePermission < Base
        PERMISSION_TYPE = {
          0: 'No Permission',
          1: 'Execute',
          2: 'Write',
          4: 'Read'
        }

        PERMISSION_GROUP = {
          'u' => 'Owner',
          'g' => 'Group',
          'o' => 'Other',
          'a' => 'All users'
        }
      end
    end
  end
end
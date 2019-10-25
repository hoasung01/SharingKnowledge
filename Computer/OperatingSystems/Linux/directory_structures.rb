# frozen_string_literal: true

module Computer
  module OperatingSystems
    module Linux
      class DirectoryStructures < Base
        FILE_NAMES = {
          '/bin' => 'Essential User Binaries',
          '/boot' => 'Static Boot Files',
          '/cdrom' => 'Historical Mount Point for CD-ROMs',
          '/dev' => 'Device Files',
          '/etc' => 'Configuration Files',
          '/home' => 'Home Folders',
          '/lib' => 'Essential Shared Libraries',
          '/lost+found' => 'Recovered Files',
          '/media' => 'Removable Media',
          '/mnt' => 'Temporary Mount Points',
          '/opt' => 'Optional Packages',
          '/proc' => 'Kernel & Process Files',
          '/root' => 'Root Home Directory',
          '/run' => 'Application State Files',
          '/sbin' => 'System Administration Binaries',
          '/selinux' => 'SELinux Virtual File System',
          '/srv' => 'Service Data',
          '/tmp' => 'Temporary Files',
          '/usr' => 'User Binaries & Read-Only Data',
          '/var' => 'Variable Data Files'
        }.freeze
      end
    end
  end
end

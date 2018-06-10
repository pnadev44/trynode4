name 'nodejs'
chef_version '>= 12.14' if respond_to?(:chef_version)
version '5.0.7'

depends 'build-essential'
depends 'ark', '>= 2.0.2'

%w(debian ubuntu centos redhat scientific oracle amazon smartos mac_os_x opensuseleap suse).each do |os|
  supports os
end

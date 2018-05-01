directory '/var/script' do
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end
directory '/var/script/njs' do
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end

cookbook_file '/var/script/njs/demo_module.js' do
  source 'demo_module.js'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end
cookbook_file '/var/script/njs/myfirstmodule.js' do
  source 'myfirstmodule.js'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end
execute 'demo_module_js' do
  command '/usr/bin/node /var/script/njs/demo_module.js &'
end

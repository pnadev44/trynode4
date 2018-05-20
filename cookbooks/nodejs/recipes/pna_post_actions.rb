#https://docs.chef.io/resource_chef_data_bag_item.html

puts " start of pna_post_actions.rb"

#get the port from my databag dev
dev = data_bag_item('dev', 'nodejs') do
end 

# puts "got nodejs information from databag: #{njsp.getPort()}"

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
  command "/usr/bin/node /var/script/njs/demo_module.js #{dev['njs_port']} #{dev['njs_welcometxt']} &"
end

puts " end of pna_post_actions.rb"
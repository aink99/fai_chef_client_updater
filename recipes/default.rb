# Cookbook:: fai_chef_client_updater
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
chef_client_updater 'Install latest chefdk' do
  product_name 'chefdk'
  only_if { node['packages'].keys.include? 'chefdk' }
end

chef_client_updater 'Install latest Chef client' do
  only_if { node['packages'].keys.include? 'chef' }
end

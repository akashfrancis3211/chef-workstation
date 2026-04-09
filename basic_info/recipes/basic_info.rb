#
# Cookbook:: basic_info
# Recipe:: basic_info
#
# Copyright:: 2026, The Authors, All Rights Reserved.
file '/basicinfo' do
 content "This is to get Attributes of the System
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}"
 owner 'root'
 group 'root'
action :create
end

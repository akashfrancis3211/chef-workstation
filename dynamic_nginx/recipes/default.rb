#
# Cookbook:: dynamic_nginx
# Recipe:: default
#
# Copyright:: 2026, The Authors, All Rights Reserved.
package node['nginx']['package'] do
  action :install
end

service node['nginx']['package'] do
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content node['nginx']['message']
end


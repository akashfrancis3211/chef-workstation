#
# Cookbook:: nginx
# Recipe:: nginx_recipe
#
# Copyright:: 2026, The Authors, All Rights Reserved.
package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content '<h1>Deployed using CHEF</h>'
end


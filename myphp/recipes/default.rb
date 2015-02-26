#
# Cookbook Name:: myphp
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "php"

service "httpd" do
  action [ :enable, :restart ]
end

template "/var/www/html/index.php" do
  source 'index.php.erb'
  mode '0755'
end

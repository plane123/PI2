#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'
include_recipe 'mysql::client'
include_recipe 'mysql::server'
include_recipe 'php'
include_recipe 'php::module_mysql'

package 'phpmyadmin'

template '/var/www/info.php' do
  source 'info.php'
end

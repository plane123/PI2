#
# Cookbook Name:: dockerimage2
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'docker'

docker_image 'tutum/wordpress'

docker_container 'tutum/wordpress' do
  detach true 
  env 'SETTINGS_FLAVOR=local'
  volume '/mnt/docker:/docker-storage'
end

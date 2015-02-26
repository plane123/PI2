#
# Cookbook Name:: mariadb_repo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node['mariadb']['repositories'].each do |repo|

  if node['mariadb'][repo]['managed']
    mariadb_repository repo do
      baseurl node['mariadb'][repo]['baseurl']
      cost node['mariadb'][repo]['cost']
      description node['mariadb'][repo]['description']
      enabled node['mariadb'][repo]['enabled']
      enablegroups node['mariadb'][repo]['enablegroups']
      exclude node['mariadb'][repo]['exclude']
      failovermethod node['mariadb'][repo]['failovermethod']
      fastestmirror_enabled node['mariadb'][repo]['fastestmirror_enabled']
      gpgcheck node['mariadb'][repo]['gpgcheck']
      gpgkey node['mariadb'][repo]['gpgkey']
      http_caching node['mariadb'][repo]['http_caching']
      include_config node['mariadb'][repo]['include_config']
      includepkgs node['mariadb'][repo]['includepkgs']
      keepalive node['mariadb'][repo]['keepalive']
      max_retries node['mariadb'][repo]['max_retries']
      metadata_expire node['mariadb'][repo]['metadata_expire']
      mirror_expire node['mariadb'][repo]['mirror_expire']
      mirrorlist node['mariadb'][repo]['mirrorlist']
      mirrorlist_expire node['mariadb'][repo]['mirrorlist_expire']
      password node['mariadb'][repo]['password']
      priority node['mariadb'][repo]['priority']
      proxy node['mariadb'][repo]['proxy']
      proxy_username node['mariadb'][repo]['proxy_username']
      proxy_password node['mariadb'][repo]['proxy_password']
      report_instanceid node['mariadb'][repo]['report_instanceid']
      repositoryid node['mariadb'][repo]['repositoryid']
      skip_if_unavailable node['mariadb'][repo]['skip_if_unavailable']
      source node['mariadb'][repo]['source']
      sslcacert node['mariadb'][repo]['sslcacert']
      sslclientcert node['mariadb'][repo]['sslclientcert']
      sslclientkey node['mariadb'][repo]['sslclientkey']
      sslverify node['mariadb'][repo]['sslverify']
      timeout node['mariadb'][repo]['timeout']
      username node['mariadb'][repo]['username']

      action :create
    end
  end
end

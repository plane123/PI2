default['yum']['mariadb']['repositoryid'] = 'MariaDB'

case node['platform']
when 'amazon'
  default['yum']['mariadb']['description'] = 'MariaDB-repo - $basearch - $basearch'
  default['yum']['mariadb']['mirrorlist'] = 'http://yum.mariadb.org/5.5/centos6-amd64'
  default['yum']['mariadb']['gpgkey'] = 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB'
else
  case node['platform_version'].to_i
  when 6
    default['yum']['MariaDB']['description'] = 'MariaDB-repo - $basearch'
    default['yum']['MariaDB']['mirrorlist'] = 'http://yum.mariadb.org/5.5/centos6-amd64'
    default['yum']['MariaDB']['gpgkey'] = 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB'
  end
end

default['yum']['mariadb']['failovermethod'] = 'priority'
default['yum']['mariadb']['gpgcheck'] = true
default['yum']['mariadb']['enabled'] = true
default['yum']['mariadb']['managed'] = true

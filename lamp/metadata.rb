name             'lamp'
maintainer       'PITeam'
maintainer_email 'paul.lane1@verizon.com'
license          'All rights reserved'
description      'Installs/Configures lamp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apache'
depends 'mysql~>4.1.2'
depends 'php'

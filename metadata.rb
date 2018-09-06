name              'atom'
maintainer        'Mohit Sethi'
maintainer_email  'mohit@sethis.in'
license           'Apache v2.0'
description       'Installs/Configures the Atom text editor'
long_description  'Installs/Configures the Atom text editor - a hackable editor based on Electron, maintained by GitHub'
chef_version      '>= 13.3'
license           'Apache-2.0'
version           '0.2.0'

recipe 'atom::default', 'Installs/Configures Atom'
recipe 'atom::packages', "Installs Atom packages specified under node['atom']['packages']"

supports 'mac_os_x'
supports 'windows'
supports 'ubuntu'
supports 'debian'

depends 'apt', '~> 7.1'
depends 'homebrew', '~> 5.0'

source_url 'https://github.com/mohitsethi/chef-atom'
issues_url 'https://github.com/mohitsethi/chef-atom/issues'

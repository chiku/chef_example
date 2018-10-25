name 'test_cookbook'
maintainer 'Chirantan Mitra'
maintainer_email 'chirantan.mitra@gmail.com'
license 'MIT'
description 'Test only cookbook'
long_description 'This cookbook is used to test custom resource'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
issues_url 'https://github.com/chiku/chef_example/issues'
source_url 'https://github.com/chiku/chef_example'

depends 'chef_example'
supports 'centos'
supports 'redhat'

yum_package 'epel-release' do
  flush_cache :after
end

yum_package 'nginx'

service 'nginx' do
  action %i[enable start]
end

chef_example_app 'app' do
  foo node['chef_example']['foo']
  bar node['chef_example']['bar']
  action :create
end

cookbook_file '/etc/nginx/default.d/app.conf' do
  source 'app.conf'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :reload, 'service[nginx]'
end

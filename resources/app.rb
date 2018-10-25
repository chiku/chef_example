property :app_name, String, name_property: true
property :foo, String
property :bar, String

action :create do
  vars = {
    foo: new_resource.foo,
    bar: new_resource.bar
  }

  directory "/opt/#{new_resource.app_name}" do
    user 'root'
    group 'root'
  end

  template "/opt/#{new_resource.app_name}/api.json" do
    source 'api.json.erb'
    user 'root'
    group 'root'
    mode '0644'
    variables vars
    cookbook 'chef_example'
  end
end

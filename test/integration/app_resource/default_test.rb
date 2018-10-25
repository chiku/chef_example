describe directory('/opt/app') do
  its('owner') { should cmp 'root' }
  its('group') { should cmp 'root' }
end

describe file('/opt/app/api.json') do
  its('owner') { should cmp 'root' }
  its('group') { should cmp 'root' }
  its('mode') { should cmp '0644' }
end

describe json('/opt/app/api.json') do
  its(['foo']) { should cmp 'awesome-foo' }
  its(['bar']) { should cmp 'awesome-bar' }
end

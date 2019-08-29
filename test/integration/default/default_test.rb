# InSpec test for recipe cookbooksworkstation::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

#Ubuntu package with the correct version should be installed

describe package('ubuntu')
  it { should be_installed }
  its ('version') { should be '14.04'}
end 


 #Apache service should be enabled and running

 describe service('apache') do 
  it { should be_enabled }
  it { should be_running }
end

#Port access should be enabled
describe port(8080)
 it { should be_listening }
 its ('protocols') { should cmp 'tcp' }
end


#Check if the splash page is working
describe http(' http://localhost') do
  its('status') { should cmp 200 }
end

#Check if the ping test is working
describe http('http://localhost:8080/ping') do
  ...
end


#Check if the mysql service is enabled and running
describe service('mysqld')
 it { should be_installed }
 it { should be_running }
end 
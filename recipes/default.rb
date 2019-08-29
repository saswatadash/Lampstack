#
# Cookbook:: cookbooksworkstation
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# To spin up an instance of ubuntu
package 'ubuntu' do
 version: '14.04'
 action :create
end

# To install apache package and enable service
package 'apache2' do
 action :install
end

service 'apache2' do
 action [:enable, :start]
end

# To bring up a SQL server
service 'mysqld' do
 action [:enable, :start]
end

#
# Cookbook:: cookbooksworkstation
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# To spin up an instance of ubuntu
#package 'ubuntu' do
 #version: '14.04'
 #action :create
#end

include_recipe "cookbooksworkstation::apache_httpd"
include_recipe "cookbooksworkstation::database"
include_recipe "cookbooksworkstation::php"
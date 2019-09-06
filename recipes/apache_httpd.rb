# To install apache package and enable service
package 'apache2' do
    action :install
   end
   
   service 'apache2' do
    action [:enable, :start]
   end


   if node ['platform'] == 'ubuntu' and node['platform_version'] == '18.04'
     

    case node['platform']
    when 'ubuntu'
        package 'apache2' do
            action :install
           end
           
           service 'apache2' do
            action [:enable, :start]
           end
    when  'centos'
        package 'httpd' do
            action :install
           end
           
           service 'httpd' do
            action [:enable, :start]
           end
    end

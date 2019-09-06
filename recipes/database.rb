

# To bring up a SQL server
service 'mysqld' do
version '8.0.12'
 action [:enable, :start]
end


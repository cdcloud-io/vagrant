current_dir = File.dirname(__FILE__)
log_level                       :info
log_location                    STDOUT  
node_name                       'vagrant'
client_key                      "vagrant.pem"
validation_client_name          'vagrantorg-validator'
validation_key                  "vagrantorg-validator.pem"
chef_server_url                 "https://chefserver1/organizations/vagrantorg"
cache_type                      'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path    ["#{current_dir}/../cookbooks"]

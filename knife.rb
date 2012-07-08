current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
#why is it called node_name its username from the chef server
node_name                "userName"
client_key               "#{current_dir}/userName.pem"
validation_client_name   "chef-validator"
# /etc/chef-server/chef-validtaor.pem on chef server
validation_key           "#{current_dir}/chef-validator.pem"
chef_server_url          "https://chefserver:443"
cache_type               "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
#normal client
cookbook_path            ["#{current_dir}/../cookbooks"]
#client inside vagrant
#cookbook_path            ["/vagrant/cookbooks"]
knife["editor"]="vim"

# try and keep this commented out unless its 4 vagrant c/s setups
ssl_verify_mode :verify_none

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ORGNAME"
client_key               "#{current_dir}/ORGNAME.pem"
validation_client_name   "ORGNAME-validator"
validation_key           "#{current_dir}/ORGNAME-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ORGNAME"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
encrypted_data_bag_secret "#{current_dir}/data_bag.key"

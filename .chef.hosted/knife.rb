current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "hornos"
client_key               "#{current_dir}/hornos.pem"
validation_client_name   "hornos-validator"
validation_key           "#{current_dir}/hornos-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/hornos"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "Tom Hornos"
cookbook_email           "tom.hornos@gmail.com"
cookbook_license         "apachev2"
encrypted_data_bag_secret "#{current_dir}/data_bag.key"

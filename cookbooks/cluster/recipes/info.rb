
cluster = search( :clusters, "id:cluster" )

# puts "[node] #{@node.inspect}"
print "CLUSTER : #{cluster.inspect}\n"
print "ROLE : #{node[:roles].to_s}\n"
print "ADDR : #{node[:ipaddress]}\n"

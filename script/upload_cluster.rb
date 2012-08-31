#!/usr/bin/env ruby

require 'YAML'
require 'JSON'

begin
  file = 'Clusterfile.yml'
  puts "Clusterfile: #{file}"
  if (file.end_with?(".yml"))
    $cluster = YAML.load_file file
  elsif (file.end_with?(".json"))
    $cluster = JSON.parse(File.read(file))
  else
    STDERR.puts "ERROR: Unknown file type, please use a file ending with either '.json' or '.yml'."
    exit(-1)
  end
rescue JSON::ParserError => e
  STDERR.puts e.message
  STDERR.puts "ERROR: Parsing error in the infrastructure file provided."
  exit(-1)
rescue Exception => e
  STDERR.puts e.message
  STDERR.puts "ERROR: No infrastructure .json or .yml file provided."
  exit(-1)
end

out="#{ARGV[0]}.yaml"
File.open( out, 'w' ) do |out|
  YAML.dump( $cluster, out )
end

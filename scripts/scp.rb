# Usage:
# ruby scp.rb key server from to

key = ARGV[0]
server = ARGV[1]
from = ARGV[2]
to = ARGV[3]

unless from 
  puts "echo 'Usage: server-scp source_path [destination_path] \\nFolder will be downloaded to same local folder, auto-created if needed'"
  exit
end

HOME_DIR = File.expand_path "~"
def restore_tilda path
  if path.start_with? HOME_DIR
    "~" + path[ HOME_DIR.length .. ]
  else
    path
  end  
end

if to and File.exist?(ARGV[2])
  
  STDERR.puts "🔼 Uploading to #{server}"
  to = restore_tilda to 
  to = "#{server}:#{to}"
  
else
  
  from = restore_tilda from 
  STDERR.puts "🔻 Downloading from #{server}"
  from = "#{server}:#{from}"
  to ||= "."

end

puts <<-SH
scp -o "IdentitiesOnly=yes" -i #{key} -r \
  "#{from}" "#{to}"
SH

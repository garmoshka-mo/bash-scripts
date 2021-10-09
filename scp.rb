# Usage:
# ruby scp.rb key server from to

key = ARGV[0]
server = ARGV[1]
from = ARGV[2]
to = ARGV[3]

if to
  to = "#{server}:#{to}"
else
  from = "#{server}:#{from}"
  to = "."
end

puts <<-SH
scp -o "IdentitiesOnly=yes" -i #{key} -r \
  "#{from}" "#{to}"
SH

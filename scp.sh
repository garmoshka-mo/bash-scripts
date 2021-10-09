# Usage:
# ./scp.sh from       - From server to current dir
# ./scp.sh from to    - From local path to remote path

eval `ruby ~/.scripts/scp.rb "$@"`

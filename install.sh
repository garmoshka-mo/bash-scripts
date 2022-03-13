mkdir ~/.scripts
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/install.sh > ~/.scripts/install.sh
if ! [ -f ~/.scripts/aliases.sh ]; then
  curl -L -o ~/.scripts/aliases.sh "https://www.dropbox.com/s/rlrrewx5nmo5euq/aliases.sh?dl=0"
fi
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/rebase.sh > ~/.scripts/rebase.sh
chmod a+x ~/.scripts/rebase.sh

curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/git_cmd.sh > ~/.scripts/git_cmd.sh
chmod a+x ~/.scripts/git_cmd.sh

curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/scp.rb > ~/.scripts/scp.rb
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/scp.sh > ~/.scripts/scp.sh
chmod a+x ~/.scripts/scp.sh

case "$OSTYPE" in

  # Ubuntu
  linux*)   FILE=~/.bashrc ;;

  # OS X
  darwin*)  FILE=~/.zshrc ;;

  *)        echo "unknown: $OSTYPE" ;;
esac

grep 'aliases.sh' $FILE || printf "\n\nsource ~/.scripts/aliases.sh" >> $FILE

echo 'Aliases updated'
mkdir ~/.scripts
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/install.sh > ~/.scripts/install.sh
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/aliases.sh > ~/.scripts/aliases.sh


case "$OSTYPE" in

  # Ubuntu
  linux*)   FILE=~/.bashrc ;;

  # OS X
  darwin*)  FILE=~/.bash_profile ;;

  *)        echo "unknown: $OSTYPE" ;;
esac

grep 'aliases.sh' $FILE || printf "\n\nsource ~/.scripts/aliases.sh" >> $FILE

echo 'Aliases updated'
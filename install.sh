mkdir ~/.scripts
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/install.sh > ~/.scripts/install.sh
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/aliases.sh > ~/.scripts/aliases.sh


case "$OSTYPE" in

  # Ubuntu
  linux*)   . ~/.scripts/aliases.sh ;;

  # OS X
  darwin*)  source ~/.scripts/aliases.sh ;;

  *)        echo "unknown: $OSTYPE" ;;
esac

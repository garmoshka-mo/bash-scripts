set -e
set -o pipefail

mkdir -p ~/.scripts

aliases_file=~/.scripts/aliases.sh
if [[ -L "$aliases_file" ]]
then
  echo "Skip symlink update $aliases_file"
else
  curl -L -o $aliases_file "https://www.dropbox.com/s/rlrrewx5nmo5euq/aliases.sh?dl=0" --http1.1		
fi

curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/fix_bundler.rb > ~/.scripts/fix_bundler.rb
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/rebase.sh > ~/.scripts/rebase.sh
chmod a+x ~/.scripts/rebase.sh

curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/scp.rb > ~/.scripts/scp.rb
curl https://raw.githubusercontent.com/garmoshka-mo/bash-scripts/master/scripts/scp.sh > ~/.scripts/scp.sh
chmod a+x ~/.scripts/scp.sh

case "$OSTYPE" in

  # Ubuntu
  linux*)   
		FILE=~/.bashrc # It seems like simploer to delete .bash_profile and only use .bashrc
		# FILE=~/.bash_profile
		# if [ -f ~/.bash_profile ]
		# then
		# 	grep '.bash_profile' ~/.bashrc > /dev/null || printf "\n\nsource ~/.bash_profile" >> ~/.bashrc
		# fi
		;;

  # OS X
  darwin*)  
		FILE=~/.zshrc
		;;

  *)        
		echo "unknown: $OSTYPE" 
		;;
esac

grep 'aliases.sh' $FILE > /dev/null || grep 'zshrc.sh' $FILE > /dev/null || \
	printf "\n\nsource ~/.scripts/aliases.sh" >> $FILE

echo '⏬ Aliases updated, now reload'
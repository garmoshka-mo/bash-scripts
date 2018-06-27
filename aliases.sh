alias aliases-v='echo 1'

case "$OSTYPE" in

  # Ubuntu
  linux*)   alias reload='. ~/.bashrc' ;;

  # OS X
  darwin*)  alias reload='source ~/.bash_profile' ;;

  *)        echo "unknown: $OSTYPE" ;;
esac

alias update-aliases='~/.scripts/install.sh && reload'

# Common stuff:
alias lah='ls -lAh'
alias rmf='sudo rm -R '
alias restore='tput rmcup'
# Make executable:
alias ex='sudo chmod a+x '

# Vagrant
alias va='vagrant ssh'
alias vap='vagrant up && vagrant ssh'

# Ruby
alias bu=bundle
alias be="bundle exec"
alias sp="bin/rspec"
alias rake="bin/rake"
alias rk="bin/rake"
alias spe="bin/rspec -e"

#Docker
alias xuecker='docker-machine start; eval "$(docker-machine env default)"'

# Git
alias st='git status'
alias pus='git push'
alias pul='git pull'
alias pull='git pull'
alias che='git checkout'
alias com='git commit -m'
alias rebase=~/.scripts/rebase.sh
alias master='git checkout master'
alias develop='git checkout develop'


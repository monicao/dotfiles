alias vim='mvim -v'
alias ls='ls -FGash'
alias cddev='cd $HOME/Code'
alias be="bundle exec "
eval "$(rbenv init -)"

alias start_redis='redis-server /usr/local/etc/redis.conf&'
alias start_mongo='mongod&'

export PATH=$PATH:$HOME/bin
export TERM="xterm-256color"

# NVM - Node version manager
source $(brew --prefix nvm)/nvm.sh


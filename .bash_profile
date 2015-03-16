alias vim='mvim -v'
alias ls='ls -FGash'
alias cddev='cd $HOME/Code'
alias be="bundle exec "

# alias start_redis='redis-server /usr/local/etc/redis.conf&'
# alias start_mongo='mongod&'

# export GOPATH=$HOME/go
export PATH=/usr/local/git/bin:/usr/local/heroku/bin:$PATH:$HOME/bin:/usr/local/Cellar/go/1.2.1/libexec/bin:$GOPATH/bin
export TERM="xterm-256color"

export SECRET_KEY_BASE="supersecret"

# Git command line autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Pretty git prompt
# Requires brew uninstall bash-git-prompt
# if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
#   GIT_PROMPT_THEME=Default
#   source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
# fi
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "

source $HOME/.rvm/scripts/rvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


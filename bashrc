# Editor and Pager
EDITOR="vim"
export EDITOR
if [ -f /usr/bin/most ]; then
    PAGER="most"
    alias less='most'
else
    PAGER="less -FirSwX"
    unalias less &> /dev/null
fi
MANPAGER="$PAGER"
export PAGER MANPAGER

# To keep typos alive
alias snv="svn"
alias cim="vim"
alias bim="vim"
alias svim="vim"
alias suod="sudo"
alias sduo="sudo"
alias vm="mv"

#Show me the current git branch on the command line
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# set where virutal environments will live
export WORKON_HOME=$HOME/Envs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
export HEROKU_PATH=/usr/local/heroku/bin
export PATH=$PATH:$HEROKU_PATH

#Setting up asp.net version manager
source kvm.sh

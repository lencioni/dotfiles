# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

ssh-reagent () {
 for agent in /tmp/ssh-*/agent.*; do
   echo Trying $agent
   export SSH_AUTH_SOCK=$agent
   if ssh-add -l 2>&1 > /dev/null; then
     echo Found working SSH Agent:
     ssh-add -l
     return
   fi
 done
 echo Cannot find ssh agent - maybe you should reconnect and forward it?
}

alias be="bundle exec"
alias g="git"

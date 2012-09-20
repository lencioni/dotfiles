# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

git () {
  ssh-ensure-agent
  command git "$@"
}

ssh () {
  ssh-ensure-agent
  command ssh "$@"
}

ssh-reagent () {
  for agent in /tmp/ssh-*/agent.*; do
    export SSH_AUTH_SOCK=$agent
    if ssh-add -l &> /dev/null; then
      echo Found working SSH Agent:
      ssh-add -l
      return
    fi
  done
  echo Cannot find SSH agent--maybe you should reconnect and forward it?
  return 1
}

ssh-ensure-agent () {
  if ! ssh-add -l &> /dev/null; then
    ssh-reagent &> /dev/null
  fi
}

alias be="bundle exec"
alias g="git"

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

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
alias bi="bundle install"
alias berc="bundle exec rails console"

alias g="git"
alias gr="git refresh"
alias gp="git patch"
alias ga="git amend"
alias fc="flow commit"

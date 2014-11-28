# Set USER if it does not exist.
# https://github.com/sorin-ionescu/prezto/pull/605
if [ !$USER ] ; then
  export USER="${USER:-$(whoami)}"
fi

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile"
fi

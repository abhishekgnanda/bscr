SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# git specific
alias s='git status'
alias d='git diff'
alias l='git log'
alias cl='git clean -xfd'

source $SDIR/git-completion.bash

get_git_branch() {
  local br=$(git branch 2> /dev/null | grep "*" | sed 's/* //g')
  [ -n "$br" ] && echo " ($br)"
}

export PS1='[\w$(get_git_branch)]\$ ' # TODO: Move bash specifics to general and change this to modify the existing string

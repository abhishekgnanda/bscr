SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# git specific
alias s='git status'
alias d='git diff'
alias dh='git diff HEAD'
alias l='git log'
alias n='git checkout -b'
alias cl='git clean -xfd'
alias fe='_(){ $@; git subrepo foreach \"$@\"; }; _'

source $SDIR/git-completion.bash

get_git_branch() {
  local br=$(git branch 2> /dev/null | grep "*" | sed 's/* //g')
  [ -n "$br" ] && echo " ($br)"
}

if [ -z $PRINT_HOST_NAME_IN_PROMPT ]
then
    export PS1='[\w$(get_git_branch)]\$ ' # TODO: Move bash specifics to general and change this to modify the existing string
else
    export PS1='[\u@\h \w$(get_git_branch)]\$ ' # TODO: Move bash specifics to general and change this to modify the existing string
fi

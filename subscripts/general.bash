alias rm='rm -i'
alias cs='cscope -bR'
alias strtrim='sed "s/ *$//g" | sed "s/^ *//g"'

# ssh auto-complete with previous hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default scp

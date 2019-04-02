# appier specific
alias activate='. __/bin/activate'

alias apssh='ssh -A -o "StrictHostKeyChecking no"'
alias avssh='ssh -A -i ~/.ssh/appier-vm.pem -l appier-user -o "StrictHostKeyChecking no"'
alias ayssh='ssh -A -i ~/.ssh/projecty.pem -l appier-user -o "StrictHostKeyChecking no"'
alias aassh='ssh -A -i ~/.ssh/ai.pem -l appier-user -o "StrictHostKeyChecking no"'
alias bssh='ssh -A -i ~/.ssh/bidder-ci.pem -l sys-bidder-ci -o "StrictHostKeyChecking no"'
alias apscp='scp -o "StrictHostKeyChecking no"'
alias ssr='sudo su - root'
alias ssa='sudo su - appier-user'

alias sparkssh='ssh -i ~/.ssh/spark6-user.pem -l root -o "StrictHostKeyChecking no"'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" apssh avssh ayssh aassh bssh sparkssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default apscp

alias decompile='python -m app.tool.run_compile -i production.ini -d'
alias normalize="python -c \"import sys, hashlib; x = sys.stdin.read().strip().split(':'); print hashlib.sha1(x[1]).hexdigest() if x[0] in ['gu', 'gi', 'au', 'ii'] else x[1]\""

if id -u appier-user >/dev/null 2>&1; then
    sudo chown `whoami`:admin ~/.bash_history
    sudo chown `whoami`:admin ~/.viminfo
fi

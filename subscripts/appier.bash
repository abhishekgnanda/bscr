# appier specific
alias activate='. __/bin/activate'

alias apssh='ssh -A -i ~/.ssh/appier-user.pem -l appier-user -o "StrictHostKeyChecking no"'
alias myssh='ssh -A -i ~/.ssh/abhishek_bidding_team -o "StrictHostKeyChecking no"'
alias avssh='ssh -A -i ~/.ssh/appier-vm.pem -l appier-user -o "StrictHostKeyChecking no"'
alias ayssh='ssh -A -i ~/.ssh/projecty.pem -l appier-user -o "StrictHostKeyChecking no"'
alias aassh='ssh -A -i ~/.ssh/ai.pem -l appier-user -o "StrictHostKeyChecking no"'
alias apscp='scp -i ~/.ssh/appier-user.pem -o "StrictHostKeyChecking no"'
alias myscp='scp -i ~/.ssh/abhishek_bidding_team -o "StrictHostKeyChecking no"'
alias avscp='scp -i ~/.ssh/appier-vm.pem -o "StrictHostKeyChecking no"'
alias ayscp='scp -i ~/.ssh/projecty.pem -o "StrictHostKeyChecking no"'
alias aascp='scp -i ~/.ssh/ai.pem -o "StrictHostKeyChecking no"'

alias sparkssh='ssh -i ~/.ssh/spark6-user.pem -l root -o "StrictHostKeyChecking no"'
alias sparkscp='scp -i ~/.ssh/spark6-user.pem -o "StrictHostKeyChecking no"'

alias appier-user='sudo su - appier-user'

alias iptlist='sudo iptables --list; echo Look for "1-34-163-22.HINET-IP.hinet.net" or check whatsmyip.org for the office IP'
alias iptdrop='sudo iptables -D sshguard'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" apssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" myssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default apscp
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default myscp
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" sparkssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default sparkscp
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" avssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default avscp

alias decompile='python -m app.tool.run_compile -i production.ini -d'
alias normalize="python -c \"import sys, hashlib; x = sys.stdin.read().strip().split(':'); print hashlib.sha1(x[1]).hexdigest() if x[0] in ['gu', 'gi', 'au', 'ii'] else x[1]\""

if id -u appier-user >/dev/null 2>&1; then
    sudo chown `whoami`:admin ~/.bash_history
    sudo chown `whoami`:admin ~/.viminfo
fi

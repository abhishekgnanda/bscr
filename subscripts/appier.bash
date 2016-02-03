# appier specific
alias activate='. __/bin/activate'
alias pbidder='python -m app.main -i staging.ini -f /home/abhishek/yamls/ -p 8002'
alias pusertr='python -m app.main -i production.ini -p 6420'

alias del165='ssh -i ~/.ssh/appier-user.pem appier-user@delta165.rtb.appier.net'
alias del163='ssh -i ~/.ssh/appier-user.pem appier-user@delta163.rtb.appier.net'
alias ut0='ssh -i ~/.ssh/appier-user.pem appier-user@us-freqcap0.rtb.appier.net'
alias ut1='ssh -i ~/.ssh/appier-user.pem appier-user@us-freqcap1.rtb.appier.net'
alias lombard21='ssh -i ~/.ssh/appier-user.pem appier-user@lombard21.rtb.appier.net'
alias testserver='ssh -i ~/.ssh/appier-user.pem appier-user@192.168.91.158'

alias apssh='ssh -i ~/.ssh/appier-user.pem -l appier-user -o "StrictHostKeyChecking no"'
alias apscp='scp -i ~/.ssh/appier-user.pem -o "StrictHostKeyChecking no"'
alias crssh='ssh -i ~/abhishek/bscr/sshkey/appier-user.end.pem -l appier-user -o "StrictHostKeyChecking no"'

alias appier-user='sudo su - appier-user'

alias iptlist='sudo iptables --list; echo Look for "1-34-163-22.HINET-IP.hinet.net" or check whatsmyip.org for the office IP'
alias iptdrop='sudo iptables -D sshguard'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" apssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default apscp
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" crssh

alias decompile='python -m app.tool.run_compile -i production.ini -d'
alias normalize="python -c \"import sys, hashlib; x = sys.stdin.read().strip().split(':'); print hashlib.sha1(x[1]).hexdigest() if x[0] in ['gu', 'gi', 'au', 'ii'] else x[1]\""

if id -u appier-user >/dev/null 2>&1; then
    sudo chown `whoami`:admin ~/.bash_history
    sudo chown `whoami`:admin ~/.viminfo
fi

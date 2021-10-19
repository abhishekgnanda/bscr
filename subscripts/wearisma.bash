alias wd='git diff -- ":(exclude)public/"'
alias wdh='git diff HEAD -- ":(exclude)public/"'
alias wds='git diff --staged -- ":(exclude)public/"'
alias wgs='git show -- ":(exclude)public/"'
alias wi='. $_BSCR_DIR/otherscripts/wearisma_init.sh'
alias wm='make server'
alias wa='make console'
alias rspec_es='rm -rf /tmp/es; elasticsearch -E http.port=9250 -E transport.tcp.port=9351 -E path.data=/tmp/es'
alias rc='rbenv exec rubocop'

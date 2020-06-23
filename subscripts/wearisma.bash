alias wi='. $_BSCR_DIR/otherscripts/wearisma_init.sh'
alias wm='make server'
alias wa='env $(bin/env) bin/apconsole'
alias rspec_es='rm -rf /tmp/es; elasticsearch -E http.port=9250 -E transport.tcp.port=9351 -E path.data=/tmp/es'

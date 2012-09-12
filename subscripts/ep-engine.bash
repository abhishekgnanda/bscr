# ep-engine specific
alias a='./config/autorun.sh'
alias r='cl; a'
export MEMBASEPREFIX=/opt/membase
alias c='./configure --prefix=$MEMBASEPREFIX --with-memcached=$MEMBASEPREFIX --enable-tcmalloc --no-create --no-recursion'
alias m='./config.status; make'
alias mc='memcached -v -E .libs/ep.so'
alias ws='watch -n 1 -d "echo stats | nc 0 11211 | grep -E \"mem_used|curr_items|flusher|diskqueue|resident|ep_inconsistent_slave_chk\""'
alias we='watch -n 1 -d "echo stats eviction | nc 0 11211"'
alias wm='watch -n 1 -d "echo stats memory | nc 0 11211"'
alias wk='watch -n 1 -d "echo stats kvstore | nc 0 11211"'
alias wt='watch -n 1 -d "echo stats timings | nc 0 11211"'

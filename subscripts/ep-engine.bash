# ep-engine specific
alias a='./config/autorun.sh'
alias r='cl; a'
export MEMBASEPREFIX=/opt/membase
alias c='./configure --prefix=$MEMBASEPREFIX --with-memcached=$MEMBASEPREFIX --enable-tcmalloc --no-create --no-recursion'
alias m='./config.status; make'
alias mc='memcached -v -E .libs/ep.so'

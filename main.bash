DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export _BSCR_DIR=$DIR
export _BSCR_SSP=$START_STRING_PROMPT

source $DIR/subscripts/general.bash
source $DIR/subscripts/git.bash
source $DIR/subscripts/appier.bash

export VIMINIT='so '$DIR'/otherscripts/vimrc'

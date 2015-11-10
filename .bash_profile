export EDITOR=/usr/local/bin/vim

source ${HOME}/scripts/git-completion.bash
source ${HOME}/scripts/git-prompt.sh
PS1='\[\e[36m\]\w\[\e[00m\]\[\e[35m\]$(__git_ps1 " (%s)")\[\e[00m\] \[\e[33m\]`date "+%m/%d/%y %H:%M"`\[\e[00m\] \$ '

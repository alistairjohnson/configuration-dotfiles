# vi mode
set -o vi

# set colors for bash terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# set number of lines of history to remember when searching through prior shell commands with Ctrl + r
HISTFILESIZE=10000000 

# add to PATH
export PATH="/opt/homebrew/bin:$PATH"

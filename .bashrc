# Shell configuration
export PS1='\n\[\033[01;32m\]\u\[\033[01;34m\]::\[\033[01;31m\]\h \[\033[1;34m\]{ \[\033[01;34m\]\w \[\033[1;34m\]}\[\033[01;32m\]$ \[\033[00m\]'

# Variables
export HOME="/c/Users/$USER/Documents/Projects"
export cyghome="/home/$USER"
export cygbin="/usr/local/bin"
export desk="/c/Users/$USER/Desktop"

# Command Settings
export GREP_OPTIONS="--color=always"

# Aliases
alias ls="ls -aF --color=always"
alias gsl="git log --oneline" #gsl=GitShortLog
alias less="less -R"

# Change to the new home directory
cd ~

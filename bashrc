# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

# PATH
export PATH=$PATH:$HOME/work/bin


#go
export GOBIN=$HOME/work/bin
export GOPATH=$HOME/work
export GOROOT=/usr/local/go
export gps=$HOME/work/src/github.com/zglzglak47

# colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
  #enables colorfor iTerm
export TERM=xterm-256color


# aliases
alias ls="ls -G"
alias cd..="cd .."
alias l="ls"
alias ll="ls -l"
alias la="ls -al"
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'


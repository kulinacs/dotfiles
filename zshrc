[ -n "$DISPLAY" ] && [ -z "$TMUX" ] && which tmux &> /dev/null && exec tmux

FPATH="$HOME/.zshcomp:$FPATH"
HISTFILE=~/.histfile
HISTSIZE=1000
PROMPT="%F{green}%m[%F{white}%1d%F{green}]%#%f "
export GPG_TTY=$(tty)

stat ~/go/bin &> /dev/null && PATH=$PATH:~/go/bin

bindkey -e

autoload -Uz compinit
compinit

alias ls="ls --color=auto"
alias zshreload="source ~/.zshrc"
alias xreload="xrdb ~/.Xresources"

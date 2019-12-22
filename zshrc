# If we're in an X session, NOT in a tmux session, AND tmux is installed, start tmux
[ -n "$DISPLAY" ] && [ -z "$TMUX" ] && which tmux &> /dev/null && exec tmux

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kulinacs/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PROMPT
PROMPT="%F{cyan}%m[%F{white}%1d%F{cyan}]%#%f "

# ALIASES
alias ls="ls --color=auto"
alias zshreload="source ~/.zshrc"

# PATH
export PATH="/home/kulinacs/.local/bin:${PATH}"

[[ -s "/home/kulinacs/.gvm/scripts/gvm" ]] && source "/home/kulinacs/.gvm/scripts/gvm"

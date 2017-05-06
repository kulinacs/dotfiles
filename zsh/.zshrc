# Initialize
[[ $- != *i* ]] && return # Check if shell is interactive
[[ -z "$SSH_CLIENT" ]] && [[ -z "$TMUX" ]] && which tmux && exec tmux # Spawn initial tmux session

# General Settings
export EDITOR="emacs"
export QUBES_GPG_DOMAIN="sys-gpg"
export TERM="screen-256color"
export PASSWORD_STORE_ENABLE_EXTENSIONS="true"

# Source external files
source $ZDOTDIR/.zshaliases
source $ZDOTDIR/.zshprompt

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=2000
SAVEHIST=2000
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zsh/.zshrc'
autoload -Uz compinit
compinit
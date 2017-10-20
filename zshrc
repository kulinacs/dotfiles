[ -n "$DISPLAY" ] && [ -z "$TMUX" ] && which tmux &> /dev/null && exec tmux

FPATH="$HOME/.zshcomp:$FPATH"
HISTFILE=~/.histfile
HISTSIZE=1000
PROMPT="%F{cyan}%m[%F{white}%1d%F{cyan}]%#%f "
export GPG_TTY=$(tty)

# Add gopath if found
stat ~/go/bin &> /dev/null && PATH=$PATH:~/go/bin

bindkey -e

autoload -Uz compinit
compinit

alias ls="ls --color=auto"
alias zshreload="source ~/.zshrc"
alias xreload="xrdb ~/.Xresources"
alias docker-rms="sudo docker ps -aq --no-trunc | sudo xargs docker rm"
alias docker-rmid="sudo docker images --quiet --filter "dangling=true" | sudo xargs docker rmi"

# GRC
if [[ "$TERM" != dumb ]] && (( $+commands[grc] )) ; then
  # Prevent grc aliases from overriding zsh completions.
  setopt COMPLETE_ALIASES

  # Supported commands
  cmds=(
    cc \
    configure \
    cvs \
    df \
    du \
    diff \
    dig \
    free \
    gcc \
    gmake \
    ifconfig \
    journalctl \
    last \
    lsblk \
    lspci \
    lsmod \
    lsof \
    ldap \
    make \
    mount \
    mtr \
    netstat \
    nmap \
    ping \
    ping6 \
    ps \
    stat \
    systemctl \
    traceroute \
    traceroute6 \
    uptime \
    vmstat \
    wdiff \
  );

  # Set alias for available commands.
  for cmd in $cmds ; do
    if (( $+commands[$cmd] )) ; then
      alias $cmd="grc --colour=auto $cmd"
    fi
  done

  # Clean up variables
  unset cmds cmd
fi

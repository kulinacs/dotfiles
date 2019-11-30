export EDITOR=emacs
export PAGER=less
export TERMINAL=alacritty

[[ -z $SSH_AUTH_SOCK ]] && eval "$(ssh-agent -s -t 3600)"

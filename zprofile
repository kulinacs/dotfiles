export EDITOR=emacs
export PAGER=less

[[ -z $SSH_AUTH_SOCK ]] && eval "$(ssh-agent -s -t 3600)"

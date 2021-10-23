. $HOME/.profile

if [[ $- == *i* ]]; then . ~/.zshrc; fi
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx_wrapper

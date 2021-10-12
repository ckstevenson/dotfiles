#
# ~/.bash_profile
#

. $HOME/.profile
if [[ $- == *i* ]]; then . ~/.bashrc; fi
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx_wrapper

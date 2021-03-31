#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
#export TERM="xterm-256color"

# Source configs
for f in ~/.config/shell/*; do source "$f"; done

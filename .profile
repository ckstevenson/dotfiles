# Environmental Variables
export BROWSER="/usr/bin/firefox"
export TERMINAL="/usr/local/bin/st"
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"
export STATUSBAR="/usr/bin/polybar default"
#export MANPAGER="/bin/sh -c \"col -b | nvim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""
export FILE="/usr/bin/lf"
export PATH="$PATH:/home/cameron/.local/bin"
export PAGER="less"
export WM="bspwm"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export WINEPREFIX="$HOME/.config/.wine"
#[ "$(hostname)" == "workstation" ] && { export CPU=2; export GPU=/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/hwmon/hwmon5/temp1_input ;} || { export CPU=6; export GPU=NONE ;}
#export NUM_GPUS="$(lspci | grep VGA | wc -l)"
export MINIKUBE_IN_STYLE=False

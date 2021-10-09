# Environmental Variables
export BROWSER="/usr/bin/firefox"
export TERMINAL="/usr/local/bin/st"
#export TERM="xterm-256color"
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"
export STATUSBAR="/usr/bin/polybar default"
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""
export FILE="/usr/bin/lf"
export PATH="$PATH:/home/cameron/.local/bin"
export PAGER="less"
export WM="bspwm"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
#export MONITOR="$(xrandr | grep primary | cut -d' ' -f1'')"
#LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#c5c8c6,bg:#1d1f21,hl:#46d0e2 --color=fg+:#c5c8c6,bg+:#1d1f21,hl+:#27e837 --color=info:#7d38d8,prompt:#27e837,pointer:#7d38d8 --color=marker:#7d38d8,spinner:#46d0e2,header:#27e837'
export WLAN=$(ls /sys/class/net | grep wl)
export ETH=$(ls /sys/class/net | grep en)
export BR=$(ls /sys/class/net | grep br)
export WINEPREFIX="$HOME/.config/.wine"
#[ "$(hostname)" == "workstation" ] && { export CPU=2; export GPU=/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/hwmon/hwmon5/temp1_input ;} || { export CPU=6; export GPU=NONE ;}
#export NUM_GPUS="$(lspci | grep VGA | wc -l)"
export MINIKUBE_IN_STYLE=False

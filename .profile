# Environmental Variables
export BROWSER="/usr/bin/firefox"
export TERMINAL="/usr/local/bin/st"
export VISUAL="/usr/bin/nvim"
export EDITOR="$VISUAL"
export STATUSBAR="/usr/bin/polybar default"
export FILE="/usr/bin/lf"
export PATH="$PATH:/home/cameron/.local/bin"
export PAGER="less"
export WM="bspwm"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
#export MONITOR="$(xrandr | grep primary | cut -d' ' -f1'')"
#LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
export WLAN=$(ls /sys/class/net | grep wl)
export ETH=$(ls /sys/class/net | grep en)
export BR=$(ls /sys/class/net | grep br)
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export AWS_VAULT_BACKEND=pass
HOSTNAME="$(hostname)"
export HOSTNAME

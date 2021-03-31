#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#[[ -f ~/.xmodmap ]] && xmodmap ~/.Xmodmap
#sxhkd &
#polybar default &
#/home/cameron/.local/bin/disp_lay &
#unclutter &
exec bspwm

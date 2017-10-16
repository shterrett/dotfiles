xrdb -cpp /usr/bin/cpp -I$HOME .Xresources

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

[[ -f ~/.config/xmobar/xmobarrc ]] && xmobar ~/.config/xmobar/xmobarrc &
exec xmonad

xrdb -cpp /usr/bin/cpp -I$HOME .Xresources

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec xmonad

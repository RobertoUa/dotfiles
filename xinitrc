#!/bin/sh
#
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export GTK2_RC_FILES="$HOME/.gtkrc-2.0.mine"
xrdb -merge ~/.Xresources &
tmux source-file ~/.tmux.conf &
thunar --daemon &

setxkbmap -layout "us,ru,ua" -option "grp:alt_space_toggle"

guake &
gnome-do & #synapse &
clipit &

exaile &
skypetab-ng --disable-cleanlooks -style GTK &
firefox &
pulseaudio --start
xset m 0 0
compton -cGfb -D 5
volumeicon &
udiskie &

exec i3

#case $1 in
#xfce4)
  #exec startxfce4
  #;;
#xmonad)
  #exec xmonad
  #;;
#i3|*)
  #exec i3
  #;;
#esac

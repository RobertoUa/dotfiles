#!/bin/sh
#
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/.Xresources &
tmux source-file ~/.tmux.conf &
thunar --daemon &

setxkbmap -layout "us,ru,ua" -option "grp:alt_space_toggle,grp_led:scroll"

guake &
gnome-do &
clipit &

exaile &
skypetab-ng &
firefox &
pulseaudio --start
xset m 0 0

#exec startxfce4
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

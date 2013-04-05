#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# ...or the Window Manager of your choice


exec startxfce4
#DEFAULT_SESSION=xfce4
#case $1 in
#xfce4)
	#exec startxfce4
  #exec xmonad
	#;;
#icewm)
	#icewmbg &
	#icewmtray &
	#exec icewm
	#;;
#wmaker)
	#exec wmaker
	#;;
#blackbox)
	#exec blackbox
	#;;
#*)
	#exec $DEFAULT_SESSION
	#;;
#esac


xsetroot -cursor_name left_ptr &


udiskie &
urxvtd
#thunar --daemon &

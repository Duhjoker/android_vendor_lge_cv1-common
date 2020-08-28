#!/bin/sh

su -l user -c '
cd
vncserver -kill :1
rm -f /tmp/.X1-lock
rm -f /tmp/.X11-unix/X1
vncserver -geometry 800x480 :1 -dpi 64
'

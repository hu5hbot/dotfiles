export LANG=en_US.UTF-8

# preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
fi

term="$(cat /proc/$PPID/comm)"
export PATH="$PATH:/home/giygas/.local/bin"

# here's an idea, if you create null sinks and identify them, you can loop them back into whatever your stereo audio sink is, I use it for recording purposes but it's superflous and depends entirely on your setup.
alias buildaudio="pacmd load-module module-null-sink sink_name=GameAudio; pacmd load-module module-null-sink sink_name=MusicAudio; pacmd load-module module-null-sink sink_name=CallAudio; pacmd load-module module-loopback source=GameAudio.monitor sink=alsa_output.pci-0000_0c_00.6.analog-stereo latency_msec=1; pacmd load-module module-loopback source=MusicAudio.monitor sink=alsa_output.pci-0000_0c_00.6.analog-stereo latency_msec=1; pacmd load-module module-loopback source=CallAudio.monitor sink=alsa_output.pci-0000_0c_00.6.analog-stereo latency_msec=1; pacmd update-sink-proplist GameAudio device.description=Game_Audio; pacmd update-sink-proplist CallAudio device.description=Call_Audio; pacmd update-sink-proplist MusicAudio device.description=MusicAudio"

# identify keys in a window using xev
# doesn't like being aliased
# xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'

# command on arch linux to remove extra packages
# doesn't like being aliased
# "sudo pacman -Rsn $(pacman -Qdtq)"

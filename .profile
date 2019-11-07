#!/usr/bin/env sh

# Set our umask
umask 022

# Append our default paths
appendpath () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

appendpath '/usr/local/sbin'
appendpath '/usr/local/bin'
appendpath '/usr/bin'
appendpath '/home/fffroze/.config/dynamic-colors/bin'
appendpath '/home/fffroze/.local/bin'

unset appendpath

[ -d /usr/bin/vendor_perl ] && PATH=$PATH:/usr/bin/vendor_perl
[ -d /usr/bin/core_perl ] && PATH=$PATH:/usr/bin/core_perl

export PATH

export MOZ_PLUGIN_PATH="/usr/lib/mozilla/plugins"

LS_COLORS='rs=0:di=01;36:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzma=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.7z=01;31:*.rz=01;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.ppm=00;35:*.xbm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.svg=00;35:*.svgz=00;35:*.pcx=00;35:*.mov=00;35:*.mpg=00;35:*.mpeg=00;35:*.mp4=00;35:*.m4v=00;35:*.vob=00;35:*.wmv=00;35:*.asf=00;35:*.rm=00;35:*.rmvb=00;35:*.flc=00;35:*.avi=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.yuv=00;35:*.axv=00;35:*.ogv=00;35:*.ogx=00;35:*.au=00;36:*.aup=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.pcap=01;33:*.xml=01;33:*.txt=00;37:*.py=00;32:';
export LS_COLORS

[ -f /etc/locale.conf ] && . /etc/locale.conf
export LANG

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH

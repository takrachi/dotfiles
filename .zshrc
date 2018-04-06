# Created by newuser for 5.2
[[ $- != *i* ]] && return

# Prompt
PS1='%(?.%B%F{red}.%B%F{yellow})RλCHI %b»%f '
RPS1='[%B%F{blue}%~%f%b]'
# Alias
alias ls='ls --color=auto'
alias d='cd ~/Downloads && ls'
alias la='ls -a'
alias py='python2.7'
alias ..='cd ..'
alias nete='sudo  ~/Documents/Work/netExtenderClient/netExtender'
alias work='cd ~/Documents/Work && ls'
alias burp='java -jar ~/Apps/burpsuite_free_v1.7.24.jar'
alias my='~/Apps/mymail.py'
alias run='gcc -Wall *.c && ./a.out'
alias ser='php -S 127.0.0.1:22222'
alias mon='xrandr --output HDMI1 --mode 1920x1080 --right-of eDP1'

# Exports
LS_COLORS='rs=0:di=01;36:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzma=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.7z=01;31:*.rz=01;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.ppm=00;35:*.xbm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.svg=00;35:*.svgz=00;35:*.pcx=00;35:*.mov=00;35:*.mpg=00;35:*.mpeg=00;35:*.mp4=00;35:*.m4v=00;35:*.vob=00;35:*.wmv=00;35:*.asf=00;35:*.rm=00;35:*.rmvb=00;35:*.flc=00;35:*.avi=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.yuv=00;35:*.axv=00;35:*.ogv=00;35:*.ogx=00;35:*.au=00;36:*.aup=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.pcap=01;33:*.xml=01;33:*.txt=00;37:*.py=00;32:';

export LS_COLORS
export PATH="$HOME/.dynamic-colors/bin:$PATH"

# Apps
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh
dynamic-colors init
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select=200

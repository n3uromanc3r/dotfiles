## SYSTEM MANAGEMENT
alias uu='sudo apt-get update && sudo apt-get dist-upgrade -y --force-yes'
alias install='sudo apt-get install'
alias search='sudo apt-cache search'
alias version='sudo apt-cache show'
alias ubuntu-version='cat /etc/lsb-release'
alias sources='sudo vim /etc/apt/sources.list'
alias xorg-edit='sudo vim /etc/X11/xorg.conf'
alias show-uuids='sudo blkid'
alias installed-version='dpkg -s'

## PLYMOUTH
alias plymouth-theme-change='sudo update-alternatives --config default.plymouth'
alias plymouth-update='sudo update-initramfs -u'

## APACHE
alias restart-apache='sudo service apache2 restart'
alias reload-apache='sudo service apache2 reload'
alias log="tail -n 500 /var/log/apache2/error.log"

## GIT
alias pull="git branch | sed --quiet 's/* \(.*\)/\1/p' | xargs git pull origin"
alias push="git branch | sed --quiet 's/* \(.*\)/\1/p' | xargs git push origin"
alias undo-failed-merge='git reset --merge'
alias stash="git stash"
alias unstash="git stash apply stash@{0}"
alias current-commit='git rev-parse --verify HEAD'

## NMAP
alias nmap-comprehensive-slow='sudo nmap -sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all'
alias nmap-intense='sudo nmap -T4 -A -v -PE -PS22,25,80 -PA21,23,80,3389'
alias nmap-ping='sudo nmap -sP -PE -PA21,23,80,3389'

## RSYNC
alias rsync-normal='rsync -avs --partial --progress'
alias rsync-ssh='rsync -avsz --partial --progress -e ssh'

## USEFUL
alias clear-bash='rm ~/.bash_history'
alias burn-iso='wodim dev=ATAPI:/dev/sr0 -data -v -eject'
alias ascii-art='showfigfonts -d ~/.local/share/figlet/'
alias strip-exif='exiftool -all='
alias whisper='espeak -v+whisper'
alias whatsmyip='wget icanhazip.com -O - 2> /dev/null; echo'
alias waveform-generator='sndfile-waveform -C 0xff5B5B5B --foreground 0xff5B5B5B --background 0xffF1F1F1 --no-peak --gainscale --geometry 616x60'

if [ -f ~/.bash_aliases.private ]; then
   . ~/.bash_aliases.private
fi
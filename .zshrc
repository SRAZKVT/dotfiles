# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

### FUNCTIONS ###


which_sudo() {
	if command -v sudo >/dev/null && sudo -l | grep -q -e ' ALL$' -e xbps-install; then
		echo sudo
	elif command -v doas >/dev/null && [ -f /etc/doas.conf ]; then
		echo doas
	elif [ "$(id -u)" != 0 ]; then
		echo su
	fi	
}


### ALIASES ###
# Package management
alias xsysu="$(which_sudo) xbps-install -Suv"
alias xpkgu="$(which_sudo) xbps-install -Su"
alias xrm="$(which_sudo) xbps-remove"
# alias xi="$(which_sudo) xbps-install -S" -- present in xtools
# alias xrs="xbps-query -Rs" -- present in xtools

# System power management
alias poweroff="$(which_sudo) poweroff"
alias reboot="$(which_sudo) reboot"

# Color coded ls
alias ls='ls --color=auto'

# Moving in the filesystem
alias ..='cd ..'
alias ...='cd ../..'

# Music
alias ytmp3="yt-dlp -f 'ba' -x --audio-format mp3"

# Random stuff i use a lot
alias cl="clear"

# Setup prompt
NEWLINE=$'\n'
PROMPT="[%F{111}%n%f at %F{121}%M%f in %F{011}%1~%f]${NEWLINE}-> "

# Setup zsh suggestions
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

eval $(thefuck --alias)

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

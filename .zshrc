# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install


### ALIASES ###
# Package management
alias sysu='sudo xbps-install -Su'
alias repu='sudo xbps-install -S'
alias pkgu='sudo xbps-install -u'
alias install='sudo xbps-install'
alias uninstall='sudo xbps-remove'
alias query='xbps-query -Rs'

# System power management
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'

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

export SCRIPTS_DIR="$HOME/Scripts/my-scripts"

eval $(thefuck --alias)

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

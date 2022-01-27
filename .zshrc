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

# Setup prompt
PROMPT='[%F{011}%1~%f] -> '

# Setup zsh suggestions
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"


# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

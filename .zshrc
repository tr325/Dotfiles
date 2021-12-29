alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias idea=' /Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea . &'

PS1="\$:%~%%"

# Binds up and down arrow keys to history search for current line of buffer
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Extended history settings
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt incappendhistory
setopt sharehistory
setopt extendedhistory

# Get tab autocomplete for branches
autoload -U compinit
autoload -U bashcompinit
compinit -i
bashcompinit


source ~/.dotfiles/scripts/git-prompt.sh

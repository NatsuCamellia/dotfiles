# # [ Anitidote Plugins ]
# source ~/.antidote/antidote.zsh
# # initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
# antidote load

# [ Powerlevel10k ]
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme
if [[ -r $ZDOTDIR/p10k.zsh ]]; then
    source $ZDOTDIR/p10k.zsh
fi

# [ Autocomplete ]
autoload -Uz compinit
compinit
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^y' autosuggest-accept

# [ Edit Command Line ]
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line


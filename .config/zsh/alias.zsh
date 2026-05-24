alias la='ls -A'
alias ll='ls -alF'
alias enve='$EDITOR $ZDOTDIR/.zshenv'
alias lenve='$EDITOR $ZDOTDIR/.zshenv.local'
alias confe='$EDITOR $XDG_CONFIG_HOME'
alias dote='$EDITOR ~/dotfiles'

if (( $+commands[tmuxinator] )); then
    alias tn='tmuxinator'
    compdef tn=tmuxinator
fi

alias la='ls -A'
alias ll='ls -alF'
alias enve='$EDITOR ~/.zshenv'
alias lenve='$EDITOR ~/.zshenv.local'
alias confe='$EDITOR ~/.config'
alias dote='$EDITOR ~/dotfiles'

if (( $+commands[tmuxinator] )); then
    alias tn='tmuxinator'
    compdef tn=tmuxinator
fi

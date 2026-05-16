alias dot='git --git-dir=$HOME/.dotfiles/dotfiles.git --work-tree=$HOME'
compdef dot=git
alias la='ls -A'
alias ll='ls -alF'
alias enve='$EDITOR ~/.zshenv'
alias lenve='$EDITOR ~/.zshenv.local'
alias confe='$EDITOR ~/.config'

if (( $+commands[tmuxinator] )); then
    alias tn='tmuxinator'
    compdef tn=tmuxinator
fi

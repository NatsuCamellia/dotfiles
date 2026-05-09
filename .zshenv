# meta environment variables for zsh
ZDOTDIR=$HOME/.config/zsh

export XDG_CONFIG_HOME="$HOME/.config"

export PATH=~/.local/bin:$PATH

if [ -r ~/.cargo/env ]; then
    source ~/.cargo/env
fi

# host-specific environment variables
if [ -r "$HOME/.zshenv.local" ]; then
    source "$HOME/.zshenv.local"
fi

# use Neovim as the default editor
if (( $+commands[nvim] )); then
    export VISUAL=nvim
    export EDITOR=nvim
else
    export VISUAL=vim
    export EDITOR=vim
fi


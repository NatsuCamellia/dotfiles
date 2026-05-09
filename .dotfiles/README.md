# dotfiles

## Bootstrap

Do these in your home directory:

```
git clone --bare <repo-url> ~/.dotfiles/dotfiles.git
alias dotfiles='git --git-dir=$HOME/.dotfiles/dotfiles.git --work-tree=$HOME'
dotfiles checkout
dotfiles submodule update --init --recursive
dotfiles config status.showUntrackedFiles no
```


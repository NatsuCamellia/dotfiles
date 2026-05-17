# dotfiles

## Prerequisites

- `git`
- `stow`

## Install

You can change `~/dotfiles` to any directory you want, but make sure `~` to be the direct parent directory.

```
git clone --bare <repo-url> ~/dotfiles
cd ~/dotfiles
stow .
```


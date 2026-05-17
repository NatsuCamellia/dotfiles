# dotfiles

## Prerequisites

- `git`
- `stow`

## Install

You can change `~/dotfiles` to any directory you want, but make sure `~` to be the direct parent directory.

```
git clone --recurse-submodules --shallow-submodules <repo-url> ~/dotfiles
cd ~/dotfiles
stow .
```

## Update

```
git pull --recurse-submodules
```

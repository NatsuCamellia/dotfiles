# dotfiles

## Prerequisites

- `git`
- `stow`

## Install

You can change `~/dotfiles` to any directory you want, but make sure `~` to be the direct parent directory.

```
git clone --recurse-submodules --shallow-submodules <repo-url> ~/dotfiles
cd ~/dotfiles
git config submodule.recurse true
stow .
```

## Update

```
git pull
```

## Tool-Specific Instructions

### Git

Move `.gitconfig` to `.config/git/config.local`. This allows Git to source `.config/git/config` first and then include your local config later, ensuring your sensitive config is not in the repo.


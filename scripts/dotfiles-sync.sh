#!/bin/sh

dot() {
    git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME/dotfiles "$@"
}

notify() {
    case "$(uname -s)" in
        Darwin)
            osascript -e "display notification \"$1\" with title \"Dotfiles\""
            ;;
        Linux)
            /usr/bin/notify-send "Dotfiles" "$1"
            ;;
    esac
}

# notify "Syncing..."

dot pull --rebase --autostash
# dot add -u
# dot diff --cached --quiet || $GIT commit -m "chore: auto sync from $(hostname)"
# dot push

# notify "Sync complete"

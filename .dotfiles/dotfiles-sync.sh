#!/bin/sh

GIT="git --git-dir=$HOME/.dotfiles/dotfiles.git --work-tree=$HOME"

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

$GIT pull --rebase --autostash
# $GIT add -u
# $GIT diff --cached --quiet || $GIT commit -m "chore: auto sync from $(hostname)"
# $GIT push

# notify "Sync complete"

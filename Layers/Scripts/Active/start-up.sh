#! /bin/sh

hyprctl dispatch exec [workspace 1 silent] obsidian

hyprctl dispatch exec [workspace 2 silent] firefox

hyprctl dispatch exec [workspace 3 silent] thunderbird

hyprctl dispatch exec [workspace 4 silent] qutebrowser --target window http://localhost:8080/\#home
hyprctl dispatch exec [workspace 4 silent] bitwarden

hyprctl dispatch exec [workspace 8 silent] anki

hyprctl dispatch exec [workspace 9 silent] discord

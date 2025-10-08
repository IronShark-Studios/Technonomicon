#!/bin/sh

# --- Configuration ---
# Set the path to your input session file
SESSION_FILE="/home/xin/.local/share/qutebrowser/sessions/default.yml"

url=$(
    yq -r '
        .windows[] |
        .tabs[] |
        select(.history[0].active == true) |
        .history[0] |
        "<b>\(.title)</b> <i>\(.url)</i>"
    ' "$SESSION_FILE" \
    | sed 's|&|&amp;|g' \
    | rofi -dmenu -i -l 15 -p "Active Tabs" -markup-rows
)

url=$(echo "$url" | sed -E 's/^\<b\>.*\<[/]b\> +//g' | sed -E 's/^\<i\>(.*)\<[/]i\>/\1/' | grep -E "https?:" || echo "$url")

[ -z "${url// }" ] && exit

qutebrowser ":tab-focus $url"

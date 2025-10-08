#!/bin/sh

[ -z "$QUTE_URL" ] && QUTE_URL='https://en.wikipedia.org/wiki/Special:Random'

cp -f /home/xin/.local/share/qutebrowser/history.sqlite /tmp/qute-history.sqlite

url=$(printf "%s\n%s" "$QUTE_URL" "$(sqlite3 -separator ' ' "/tmp/qute-history.sqlite" 'select title, url from CompletionHistory')" | cat "/home/xin/.config/qutebrowser/quickmarks" - | rofi -dmenu -l 15 -p "Select Url")

url=$(echo "$url" | sed -E 's/[^ ]+ +//g' | grep -E "https?:" || echo "$url")

[ -z "${url// }" ] && exit

echo "open $url" >> "$QUTE_FIFO" || qutebrowser "$url"

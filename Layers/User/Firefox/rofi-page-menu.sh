#!/bin/sh

cp -f /home/xin/.local/share/qutebrowser/history.sqlite /tmp/qute-history.sqlite

url=$(printf "%s\n%s" "$(sqlite3 -separator ' ' "/tmp/qute-history.sqlite" 'select "<b>" || title || "</b>", "<i>" || url || "</i>" from CompletionHistory')" | cat "/home/xin/.config/qutebrowser/quickmarks" - | rofi -dmenu -i -l 15 -p "Select Url" -markup-rows)

url=$(echo "$url" | sed -E 's/^\<b\>.*\<[/]b\> +//g' | sed -E 's/^\<i\>(.*)\<[/]i\>/\1/' | grep -E "https?:" || echo "$url")

[ -z "${url// }" ] && exit

qutebrowser ":open $url"

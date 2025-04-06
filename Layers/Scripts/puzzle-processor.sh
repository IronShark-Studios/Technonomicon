#!/bin/sh

target_file=$(ls -1 | head -n 1)

text=$(cat $target_file)

matches=$(echo "$text" | grep -oE 'B\[[^]]*\]|W\[[^]]*\]|B[^]]*C\[CORRECT\]|W[^]]*C\[CORRECT\]' | tr '\n' ' ' | sed -E 's/(AB|AW|W|B|;|\s+)//g')

final_string="MA$matches"

sed -i "s/SZ\[19\]/SZ\[19\]$final_string/" "$target_file"

wl-copy -t TEXT < $target_file

rm $target_file

ls -1 | wc -l

ydotool key 125:1 106:1 106:0 125:0

ydotool key 29:1 42:1 47:1 47:0 42:0 29:0

ydotool key 29:1 28:1 28:0 29:0

ydotool key 125:1 105:1 105:0 125:0

bash puzzle-processor.sh

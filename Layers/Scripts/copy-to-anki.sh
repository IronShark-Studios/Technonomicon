#! /bin/sh


# This script copies a files contents from its current directory into the anki windo to the right of it. SGF feild must have been pre-selected before running

target_file=$(eza --oneline | head --lines 1)

echo $target_file
echo
echo
sleep 0.1

wl-copy -t TEXT < $target_file
sleep 0.1

rm $target_file
sleep 0.1

ydotool key 125:1 106:1 106:0 125:0
sleep 0.1

ydotool key 29:1 42:1 47:1 47:0 42:0 29:0
sleep 0.5

ydotool key 29:1 28:1 28:0 29:0
sleep 0.5

ydotool key 125:1 105:1 105:0 125:0
sleep 0.1

bash copy-to-anki.sh

#!/bin/sh

# Saves the current sabaki file to a specific dir in projects.

file_name="$(date +"%H%M%S").sgf"
target_directory="/home/xin/Projects/Tsumego-Books"
target_file="$target_directory$file_name"




    wl-copy -t TEXT $target_file
    sleep 0.2
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.2
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 1
    ydotool key 29:1 49:1 49:0 29:0
    sleep 0.2
    ydotool key 106:1 106:0
    sleep 0.2
    ydotool key 28:1 28:0
    sleep 0.2
    ydotool key 1:1 1:0
    sleep 0.2
    ydotool key 29:1 18:1 29:0 18:0


#!/bin/sh

# Creates mirrored postions of the input file.

input_directory=$(pwd)
input_file=$(eza --oneline | head -n 1)
input_file_stripped=${input_file%.sgf}
target_directory="$input_directory/Target/"
out_put_1="$target_directory$input_file_stripped-1.sgf"
out_put_2="$target_directory$input_file_stripped-2.sgf"
out_put_3="$target_directory$input_file_stripped-3.sgf"
out_put_4="$target_directory$input_file_stripped-4.sgf"
out_put_5="$target_directory$input_file_stripped-5.sgf"
out_put_6="$target_directory$input_file_stripped-6.sgf"
out_put_7="$target_directory$input_file_stripped-7.sgf"
out_put_8="$target_directory$input_file_stripped-8.sgf"

# Check if the file name ends with ".sgf"
if [[ "$input_file" == *.sgf ]]; then
    # If it's a .sgf file, print a message and run the rest of your script
    echo "Processing: '$input_file'"
    
    # Creates target directory if it doesn't already exist.
    mkdir -p ./Target
    
    # Copies home path of input file to clipboard so sabaki can open the file.
    wl-copy -t TEXT $input_directory/$input_file

    # Moves focus 1 window to the right to sabaki
    ydotool key 125:1 106:1 106:0 125:0
    sleep 0.5

    # Opens Sabaki file finder
    ydotool key 29:1 24:1 24:0 29:0
    sleep 0.5

    # Pastes input file from clipboard
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5


    # Saves starting state as out_put_1 in target directory
    wl-copy -t TEXT $out_put_1
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_2
    wl-copy -t TEXT $out_put_2
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_3
    wl-copy -t TEXT $out_put_3
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_4
    wl-copy -t TEXT $out_put_4
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates and flips board and saves as out_put_5
    wl-copy -t TEXT $out_put_5
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 56:1 108:1 108:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_6
    wl-copy -t TEXT $out_put_6
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_7
    wl-copy -t TEXT $out_put_7
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 0.5

    # Rotates board and saves as out_put_8
    wl-copy -t TEXT $out_put_8
    sleep 0.5
    ydotool key 29:1 56:1 106:1 106:0 56:0 29:0
    sleep 0.5
    ydotool key 29:1 42:1 31:1 31:0 42:0 29:0
    sleep 0.5
    ydotool key 29:1 47:1 47:0 29:0	
    sleep 1
    ydotool key 28:1 28:0
    sleep 1

    # Returns focus to terminal and moves input file, 
    # then repeats script until there are no 
    # remaining input files.
    ydotool key 125:1 105:1 105:0 125:0
    sleep 0.5
    mkdir -p ./Completed
    sleep 0.5
    mv $input_file ./Completed
    sleep 0.5
    echo " "
    echo " "
    echo " "
    sleep 0.5
    bash copier.sh
    
else
    # If it's not a .sgf file, print a message and exit
    echo "Error: The first file, '$input_file', is not an .sgf file. Exiting."
    exit 1
fi

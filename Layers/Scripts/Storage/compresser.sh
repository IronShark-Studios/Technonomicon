#!/bin/sh
# Converts TTS format into anki import file
#
input_file=$(eza --oneline -f | head -n 1)


# Check if the file name ends with ".sgf"
if [[ "$input_file" == *.sgf ]]; then
    # If it's a .sgf file, print a message and run the rest of your script
    echo "Processing: '$input_file'"

    # Converts sgf into anki readable format
    sed -i ':a;N;s/\n/ /;ba' $input_file
    sed -i 's/[[:space:]]//g' $input_file
    sed -i '$s/.$/)\t/' $input_file

    # Moves file contents into anki.txt file
    touch anki.txt
    cat $input_file >> anki.txt

    # Moves processed files into storage directory
    mkdir -p Completed
    mv $input_file ./Completed

    # Repeats until there are no sgf files remaining
    bash compresser.sh


else
    # If it's not a .sgf file, print a message and exit
    echo "Error: The first file, '$input_file', is not an .sgf file. Exiting."
    exit 1
fi

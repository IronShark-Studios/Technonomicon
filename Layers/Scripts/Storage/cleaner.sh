#!/bin/sh
# Formats file for TTS
#
target_file=$(ls -1 | head -n 1)


# Check if the file name ends with ".sgf"
if [[ "$target_file" == *.sgf ]]; then
    # If it's a .sgf file, print a message and run the rest of your script
    echo "Processing: '$target_file'"


# Removes all on relevant SGF information
echo $(grep -o -P 'AW\[.*|AB\[.*' $target_file ) > $target_file

# Formats remaining information
sed -i -E 's/(AW|AB)/\n\n&/g' $target_file
sed -i -E 's/\[/\n&/g' $target_file
sed -i -E 's/AW/WHITE/g' $target_file
sed -i -E 's/AB/BLACK/g' $target_file
sed -i -E 's/\[(.)(.)\]/\[\1 - \2\]/g' $target_file
sed -i -E 's/\[//g' $target_file
sed -i -E 's/\]/, /g' $target_file
sed -i '1d' $target_file

# Replace sgf format with standard coordinates
# mirrors positions vertically
sed -i -E 's/a/1/g' $target_file
sed -i -E 's/b/2/g' $target_file
sed -i -E 's/c/3/g' $target_file
sed -i -E 's/d/4/g' $target_file
sed -i -E 's/e/5/g' $target_file
sed -i -E 's/f/6/g' $target_file
sed -i -E 's/g/7/g' $target_file
sed -i -E 's/h/8/g' $target_file
sed -i -E 's/i/9/g' $target_file
sed -i -E 's/j/10/g' $target_file
sed -i -E 's/k/11/g' $target_file
sed -i -E 's/l/12/g' $target_file
sed -i -E 's/m/13/g' $target_file
sed -i -E 's/n/14/g' $target_file
sed -i -E 's/o/15/g' $target_file
sed -i -E 's/p/16/g' $target_file
sed -i -E 's/q/17/g' $target_file
sed -i -E 's/r/18/g' $target_file
sed -i -E 's/s/19/g' $target_file

# Moves processed files into seperate directory
mkdir -p Output
mv $target_file ./Output

# Repeats until there are no sgf files remaining
bash cleaner.sh


else
    # If it's not a .sgf file, print a message and exit
    echo "Error: The first file, '$target_file', is not an .sgf file. Exiting."
    exit 1
fi

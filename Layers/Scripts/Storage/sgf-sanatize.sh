#!/bin/sh






# This script processes an SGF file:
# 1. Renames the target file, ensuring it ends with '.sgf'.
# 2. Deletes lines matching 'PC[***]', 'GN[***]', 'BR[***]', 'WR[***]', or 'DT[***]'.
# 3. Replaces ALL instances of 'Xin_Ironshark' with '_Chilly_'.
# 4. Then, specifically replaces 'PB[_Chilly_]' with 'PB[Me]' and 'PW[_Chilly_]' with 'PW[Me]'.
# 5. Replaces any other player names (excluding 'Me') with 'Opponent'.

# Check if a target file argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <target_file>"
  echo "Example: $0 my_game.sgf"
  exit 1 # Exit with an error status
fi

TARGET_FILE="$1"

# Check if the target file exists
if [ ! -f "$TARGET_FILE" ]; then
  echo "Error: The file '$TARGET_FILE' does not exist."
  exit 1 # Exit with an error status
fi

# --- Step 1: Delete lines matching 'PC[***]', 'GN[***]', 'BR[***]', 'WR[***]', and 'DT[***]' ---
# Use sed to delete lines containing these patterns.
# The -i option edits the file in-place.
# Brackets '[' and ']' are special characters in regex and need to be escaped with '\'.
sed -i -e '/PC\[.*\]/d' \
       -e '/GN\[.*\]/d' \
       -e '/BR\[.*\]/d' \
       -e '/WR\[.*\]/d' \
       -e '/DT\[.*\]/d' "$TARGET_FILE"

if [ $? -ne 0 ]; then
  echo "Warning: An error occurred while trying to delete 'PC', 'GN', 'BR', 'WR', or 'DT' lines from '$TARGET_FILE'."
fi

# --- Step 2: Global replacement of 'Xin_Ironshark' with '_Chilly_' ---
# This command replaces all occurrences of "Xin_Ironshark" with "_Chilly_" anywhere in the file.
sed -i 's/Xin_Ironshark/_Chilly_/g' "$TARGET_FILE"
if [ $? -ne 0 ]; then
  echo "Warning: An error occurred during global replacement of 'Xin_Ironshark' in '$TARGET_FILE'."
fi

# --- Step 3: Replace player names ('_Chilly_' with 'Me', others with 'Opponent') ---
# This single sed command performs all player name replacements in the correct order:
# IMPORTANT: The 's' (substitute) commands for '_Chilly_' to 'Me' MUST come FIRST.
# This ensures that 'PB[_Chilly_]' and 'PW[_Chilly_]' are converted to '[Me]'
# before the general '[Opponent]' rule is applied.
#
# 1. 's/PB\[_Chilly_\]/PB[Me]/g' : Replace specific Black player name '_Chilly_' with 'Me'.
# 2. 's/PW\[_Chilly_\]/PW[Me]/g' : Replace specific White player name '_Chilly_' with 'Me'.
# 3. '/PB\[Me\]/! s/PB\[.*\]/PB[Opponent]/g' : If a line does NOT contain 'PB[Me]',
#    then replace any 'PB[...]' (that hasn't already become 'PB[Me]') with 'PB[Opponent]'.
# 4. '/PW\[Me\]/! s/PW\[.*\]/PW[Opponent]/g' : If a line does NOT contain 'PW[Me]',
#    then replace any 'PW[...]' (that hasn't already become 'PW[Me]') with 'PW[Opponent]'.
#
# The commands are applied sequentially to each line.
sed -i \
  -e 's/PB\[_Chilly_\]/PB[Me]/g' \
  -e 's/PW\[_Chilly_\]/PW[Me]/g' \
  -e '/PB\[Me\]/! s/PB\[.*\]/PB[Opponent]/g' \
  -e '/PW\[Me\]/! s/PW\[.*\]/PW[Opponent]/g' \
  "$TARGET_FILE"

if [ $? -ne 0 ]; then
  echo "Warning: An error occurred during player name replacement in '$TARGET_FILE'."
fi

# --- Step 4: Prompt for new name and rename the file ---

# Prompt the user for the base of the new name
read -p "Please enter new name for target file : " BASE_NEW_NAME

# Check if the base new name is empty
if [ -z "$BASE_NEW_NAME" ]; then
  echo "Error: New name cannot be empty. Aborting rename operation."
  exit 1 # Exit with an error status
fi

# Construct the full new name, ensuring it ends with .sgf
# Remove any existing .sgf suffix if the user accidentally added it to prevent double extensions.
CLEAN_BASE_NAME="${BASE_NEW_NAME%.sgf}"
NEW_NAME="${CLEAN_BASE_NAME}.sgf"

# Rename the file using the 'mv' command
mv "$TARGET_FILE" "$NEW_NAME"

# Check the exit status of the 'mv' command
if [ $? -eq 0 ]; then
  echo "Successfully renamed '$TARGET_FILE' to '$NEW_NAME'."
else
  echo "Error: Failed to rename '$TARGET_FILE' to '$NEW_NAME'."
  exit 1 # Exit with an error status
fi

# Exit with a success status
exit 0


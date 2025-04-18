#!/bin/sh

# Assign the arguments to variables
old_filename="$1"

pb_raw=$(grep -oP 'PB\[\K[^\]]+' "$old_filename")
pb_formatted=$(echo "$pb_raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# Extract White Player (PW) name
pw_raw=$(grep -oP 'PW\[\K[^\]]+' "$old_filename")
pw_formatted=$(echo "$pw_raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

current_date=$(date +%Y-%m-%d)
# Construct the new filename

new_filename="${current_date}-${pb_formatted}-vs-${pw_formatted}.sgf"

# Check if the old file exists
if [ ! -f "$old_filename" ]; then
  echo "Error: File not found: $old_filename"
  exit 1
fi

# Rename the file
mv "$old_filename" "$new_filename"

# Replace the .sgf extension with .md
markdown_filename="${new_filename/.sgf/.md}"

# Copies game record into script variable, and removes new lines
SGF_file_content=$(cat "$new_filename" | tr -d '\n')

# Creates Obsidian note contiaing copy of game record
echo "Creating obsidian note"

touch ~/Grimoire/"$markdown_filename"

# Creates Dates need for sorting tags
current_year=$(date +%Y)
week_number=$(date +%V)

echo "[[DDK Game Records]] [[${current_year}-W${week_number}]] #Baduk 
# Game Summary

# Notable Success

# Notable Mistakes

# Game Record
\`\`\`
$SGF_file_content
\`\`\`" > ~/Grimoire/"$markdown_filename"

# Copies new file in G-Drive
echo "Storing in DDK Google Drive"
rsync -avz --progress "$new_filename" ~/G-Drive/Baduk/My-Games/DDK

# Renames Original File to show it has been archived
mv "$new_filename" "ARC-$new_filename"

# Print current directory
eza --icons --oneline --group-directories-first --color auto

# Script finished successfully
exit 0

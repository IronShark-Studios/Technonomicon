#!/bin/sh

find . -name "*.sgf" -print0 | while IFS= read -r -d $'\0' file; do
  # Extract Black Player (PB) name
  pb_raw=$(grep -oP 'PB\[\K[^\]]+' "$file")
  pb_formatted=$(echo "$pb_raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

  # Extract White Player (PW) name
  pw_raw=$(grep -oP 'PW\[\K[^\]]+' "$file")
  pw_formatted=$(echo "$pw_raw" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

  # Construct the new filename
  new_filename="${pb_formatted}-vs-${pw_formatted}.sgf"

  # Create directories for each player if they don't exist
  mkdir -p "$pb_formatted"
  mkdir -p "$pw_formatted"

  # Copy the renamed file to both directories
  cp "$file" "$pb_formatted/$new_filename"
  cp "$file" "$pw_formatted/$new_filename"

  # Delete the original file
  rm "$file"

  echo "Processed and moved: $file as $new_filename"
done

echo "Finished processing all .sgf files."

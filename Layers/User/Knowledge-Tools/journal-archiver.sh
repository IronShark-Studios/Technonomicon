#!/bin/bash

# --- Configuration ---
TARGET_DIR="/home/xin/Grimoire/Journal"
ARCHIVE_DIR="/home/xin/Grimoire/Journal/Archive"
CURRENT_DATE=$(date +%Y-%m-%d)

# --- Main Script ---

# Ensure the archive directory exists
mkdir -p "$ARCHIVE_DIR"

# Find and move files whose names are dates older than today.
# The -maxdepth 1 prevents it from looking into subdirectories.
find "$TARGET_DIR" -maxdepth 1 -type f -name "????-??-??.md" | while read -r file; do
  filename=$(basename "$file")
  file_date="${filename%.md}"

  # The file date must be lexicographically less than the current date.
  # This works for the YYYY-MM-DD format.
  if [[ "$file_date" < "$CURRENT_DATE" ]]; then
    echo "Archiving $filename"
    mv "$file" "$ARCHIVE_DIR/"
  fi
done

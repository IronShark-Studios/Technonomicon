#!/bin/bash

TARGET_DIR="/home/xin/Grimoire/Journal"
ARCHIVE_DIR="/home/xin/Grimoire/Journal/Archive"
CURRENT_DATE=$(date +%Y-%m-%d)

sleep 500

mkdir -p "$ARCHIVE_DIR"

find "$TARGET_DIR" -maxdepth 1 -type f -name "????-??-??.md" | while read -r file; do
  filename=$(basename "$file")
  file_date="${filename%.md}"

  if [[ "$file_date" < "$CURRENT_DATE" ]]; then
    echo "Archiving $filename"
    mv "$file" "$ARCHIVE_DIR/"
  fi
done

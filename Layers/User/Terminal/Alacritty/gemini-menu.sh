#!/bin/sh

# Get projects directory
PROJECTS_DIR="$HOME/Projects"

# Find subdirectories in ~/Projects (1 level deep)
# We use fd if available, otherwise find.
if command -v fd >/dev/null 2>&1; then
    SELECTION=$(fd . "$PROJECTS_DIR" --max-depth 1 --type d --exec basename | rofi -dmenu -i -p "Project" -l 10)
else
    SELECTION=$(find "$PROJECTS_DIR" -maxdepth 1 -mindepth 1 -type d -exec basename {} \; | rofi -dmenu -i -p "Project" -l 10)
fi

if [ -n "$SELECTION" ]; then
    TARGET_DIR="$PROJECTS_DIR/$SELECTION"
    # Launch alacritty in that directory running gemini-cli
    
    API_KEY=$(cat "$HOME/Projects/Technonomicon/Layers/Secrets/gemini-api.txt")
    
    # Using hyprctl dispatch exec to ensure it launches in the Hyprland environment
    hyprctl dispatch exec "alacritty --working-directory \"$TARGET_DIR\" -e sh -c \"export GEMINI_API_KEY='$API_KEY'; gemini-cli\""
fi

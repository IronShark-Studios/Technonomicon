#!/bin/bash

# Use rofi to get the query/URL from the user
query=$(echo "" | rofi -dmenu -p "Search or URL:")

# Check if the query is not empty
if [ ! -z "$query" ]; then
    # Open the query in qutebrowser. 
    # qutebrowser will automatically determine if it's a URL or a search term.
    qutebrowser "$query" &
fi

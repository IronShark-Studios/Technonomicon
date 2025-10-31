#!/bin/sh

#Primary Menu. Show a list of the most recent projects.

RECENT_LIST=$(bartib last -n 9 | sed '2d' | tac | sed 'y/012345678/123456789/')

COMMON_LIST=$(printf "New Activity\n[0] Pause Current Project\n")

MENU_LIST="$COMMON_LIST $RECENT_LIST"

PROMPT="$(bartib current | sed '2d' | sed '1d' | sed 's/^.\{17\}//')"

MENU_SELECTION="$(echo -e "$MENU_LIST" | rofi -dmenu -i -p "$PROMPT" -l 13)"

SELECTION=$(echo $MENU_SELECTION | sed 's/^\[\([0-9]\+\)\].*/\1/')

PAST_PROJECTS=$(bartib projects | sed -E 's/" "/\n/g; s/"//g')

CURRENT_PROJECT=$(bartib projects -c | sed -E 's/" "/\n/g; s/"//g')

PROJECT_LIST="$CURRENT_PROJECT\n$PAST_PROJECTS"

numeric_option () {
  case "$SELECTION" in
    "0")
      bartib stop
    ;;
    "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9")
      bartib continue "$SELECTION"
    ;;
    *)
      return 1
    ;;
  esac
}

if [[ "$MENU_SELECTION" == "New Activity" ]]; then


  export PROJECT_DESCRIPTION=$(echo -e "$PROJECT_LIST" | rofi -dmenu -i -p "Project Description" -l 13)

  export ACTIVITY_DESCRIPTION=$(rofi -dmenu -i -p "Activity Description" -l 13)
  
  bartib start -d "$ACTIVITY_DESCRIPTION" -p "$PROJECT_DESCRIPTION"
  
else

  numeric_option

fi


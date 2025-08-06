#!/bin/sh

folder=/home/cogent/quicknotes/
session_name="cogent"  # Use your existing session

# Ensure notes directory exists
[ ! -d "$folder" ] && mkdir -p "$folder"

newnote () {
  name="$(echo "" | fuzzel --dmenu --prompt " Enter note name: ")" || exit 0
  : "${name:=$(date +%F_%T | tr ':' '-')}"
  
  # Since you're always in the cogent session, this will work perfectly
  tmux new-window -t "$session_name" -c "$folder" -n "note-$name"
  tmux send-keys -t "$session_name:note-$name" "nvim $name.md" Enter
}

selected () {
  existing_notes=$(find "$folder" -name "*.md" -printf "%f\n" 2>/dev/null | sed 's/\.md$//' | sort -r)
  
  if [ -z "$existing_notes" ]; then
    newnote
  else
    all_options=$(printf " New note\n%s" "$existing_notes")
    choice=$(echo "$all_options" | fuzzel --dmenu --prompt " Choose note: ")
    
    case $choice in
      " New note"|"") newnote ;;
      *) 
        tmux new-window -t "$session_name" -c "$folder" -n "note-$choice"
        tmux send-keys -t "$session_name:note-$choice" "nvim $choice.md" Enter
        ;;
    esac
  fi
}

selected


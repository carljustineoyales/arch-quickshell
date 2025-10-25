#!/usr/bin/env bash

# Directory for saving screenshots
SAVE_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SAVE_DIR"

# Generate timestamped filename
FILENAME="$(date +'%Y-%m-%d_%H-%M-%S').png"
FILEPATH="$SAVE_DIR/$FILENAME"

# Determine mode
MODE="$1"

case "$MODE" in
  "desktop")
    grim "$FILEPATH"
    notify-send  -i $FILEPATH  "📸 Screenshot Saved" "Full desktop captured and saved to $FILEPATH"
    ;;

  "monitor")
    MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).name')
    grim -o "$MONITOR" "$FILEPATH"
    notify-send -i $FILEPATH "🖥️ Screenshot Saved" "Monitor '$MONITOR' captured and saved to $FILEPATH"
    ;;

  "region")
    TMPFILE=$(mktemp /tmp/screenshot-XXXXXX.png)
    GEOMETRY=$(slurp)

    # If user cancels slurp, GEOMETRY will be empty
    if [ -z "$GEOMETRY" ]; then
      notify-send "❌ Screenshot Cancelled" "No region selected."
      rm -f "$TMPFILE"
      exit 0
    fi

    # Capture the region
    grim -g "$GEOMETRY" "$TMPFILE"
    if [ $? -ne 0 ]; then
      notify-send "⚠️ Screenshot Failed" "Region capture failed."
      rm -f "$TMPFILE"
      exit 1
    fi

    # Open in Swappy and export to FILEPATH
    swappy -f "$TMPFILE" -o "$FILEPATH"
    rm -f "$TMPFILE"

    # Check if Swappy exported successfully
    if [ -f "$FILEPATH" ]; then
      notify-send  -i $FILEPATH "✏️ Screenshot Saved" "Region edited and saved → $FILEPATH" --icon="$FILEPATH"
    else
      notify-send "❌ Screenshot Cancelled" "Edit closed without saving."
    fi
    ;;

  *)
    notify-send "⚠️ Invalid Mode" "Usage: screenshot.sh [desktop|monitor|region]"
    ;;
esac
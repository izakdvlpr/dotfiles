#!/bin/sh

PLAYER="spotify"

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    echo ""
fi

function status_to_icon {
  while read -r status; do
    if [ "$status" = "Stopped" ]; then
      echo ""
    elif [ "$status" = "Paused"  ]; then
      echo ""
    else
      echo ""
    fi
  done
}

playerctl status -p spotify --follow 2>/dev/null | status_to_icon
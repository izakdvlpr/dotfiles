#!/usr/bin/env bash

polybar-msg cmd quit
# killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/config.ini top &
polybar -c $HOME/.config/polybar/config.ini bottom &

echo "Bars launched..."

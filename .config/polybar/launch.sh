#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/config.ini workspaces &
polybar -c $HOME/.config/polybar/config.ini machine &
polybar -c $HOME/.config/polybar/config.ini system &
polybar -c $HOME/.config/polybar/config.ini tray &

echo "Bars launched..."

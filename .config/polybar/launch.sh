#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/config workspaces &
polybar -c $HOME/.config/polybar/config machine &
polybar -c $HOME/.config/polybar/config system &
polybar -c $HOME/.config/polybar/config tray &

echo "Bars launched..."

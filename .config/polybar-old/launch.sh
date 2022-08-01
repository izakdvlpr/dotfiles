#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/config.ini main &

echo "Bars launched..."

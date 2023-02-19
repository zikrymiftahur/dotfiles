#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar bar1 -c ~/.config/polybar/config &
polybar bar2 -c ~/.config/polybar/config &
polybar bar3 -c ~/.config/polybar/config &
polybar bar4 -c ~/.config/polybar/config &
polybar bar5 -c ~/.config/polybar/config &
polybar bar6 -c ~/.config/polybar/config &
polybar bar7 -c ~/.config/polybar/config &

if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	polybar external -c ~/.config/polybar/config &
fi

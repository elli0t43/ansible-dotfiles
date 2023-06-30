#!/usr/bin/env bash
## Terminate any polybar that's already running

killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch
echo "---" | tee -a /tmp/polybar1.log 
polybar primary -c ~/.config/polybar/config.ini | tee -a /tmp/polybar1.log & disown

echo "Bars Launched...."


#!/usr/bin/zsh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
killall polybar
polybar -c ~/.config/polybar/config_1mon_2bar.ini bottom && polybar -c ~/.config/polybar/config_1mon_2bar.ini top

#!/usr/bin/zsh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config_2mon_2bar_colors.ini primary &
MONITOR=DVI-0 polybar -c ~/.config/polybar/config_2mon_2bar_colors.ini secondary &
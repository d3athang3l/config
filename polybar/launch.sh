#!/usr/bin/zsh
killall -q polybar
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini primary &
MONITOR=DVI-0 polybar -c ~/.config/polybar/config.ini secondary & 

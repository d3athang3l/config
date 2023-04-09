#!/usr/bin/zsh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini pam1 &
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini pam2 &
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini pam3 &
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini pam4 &
MONITOR=HDMI-0 polybar -c ~/.config/polybar/config.ini pam5 &
MONITOR=DVI-0 polybar -c ~/.config/polybar/config.ini secondary 
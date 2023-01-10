#!/bin/sh
# Script for system states
case "$(printf "   shutdown\n   reboot\n   suspend\n   logout\n   lock" | dmenu -l 10 -X 0 -Y 0 -W 660 -i -p "system:")" in
	 "   shutdown") 		poweroff ;;
 	 "   reboot") 			poweroff --reboot ;;
 	 "   suspend") 		systemctl suspend ;;
 	 "   logout") 			bspc quit ;;
     "   lock") 			~/.config/scripts/i3lock-fancy/i3lock-fancy.sh ;;
	*) exit 1 ;;
esac

#!/bin/sh
case "$(printf "   settings\n勒   reload configs\nﮮ   updates\n嗀   set theme\n   set background\n   display settings\n   taskmanager\n   exit bspwm" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "system:")" in
     "   settings")          zsh ~/.config/scripts/dmenu/dm-settings.sh ;;
     "勒   reload configs")    zsh ~/.config/scripts/dmenu/dm-reload-files.sh ;;
     "ﮮ   updates")           alacritty -e yay -Syu --noconfirm ;;
     "嗀   set theme")         lxappearance ;;
     "   set background")    nitrogen ;;
     "   display settings")  lxrandr ;;
     "   taskmanager")       alacritty -e btop ;;
     "   exit bspwm")        zsh ~/.config/scripts/dmenu/dm-sysstate.sh ;;
	*) exit 1 ;;
esac

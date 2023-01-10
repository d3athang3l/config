#!/bin/sh
case "$(printf "   alacritty\n   bspwm\n   conky\n   dunst\n   neofetch - default\n   neofetch - sysinfo\n   neofetch - zsh\n   ohmyzsh theme\n   p10k\n   polybar\n   sxhkd\n   zsh" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
 	"   alacritty")                alacritty -e nvim ~/.alacritty.yml  ;;
    "   bspwm")                   alacritty -e nvim ~/.config/bspwm/bspwmrc  ;;
 	"   conky")                    alacritty -e nvim ~/.config/conky.conf  ;;
 	"   dunst")                    alacritty -e nvim ~/.config/dunst/dunstrc  ;;
    "   neofetch - default")       alacritty -e nvim ~/.config/neofetch/config.conf  ;;
    "   neofetch - sysinfo")       alacritty -e nvim ~/.config/neofetch/config_sysinfo.conf  ;;
    "   neofetch - zsh")		    alacritty -e nvim ~/.config/neofetch/config_ZSH.conf  ;;
    "   ohmyzsh theme")           zsh ~/.config/scripts/dmenu/dm-zshtheme.sh ;;
    "   p10k")                     alacritte -e p10k configure ;;
	"   polybar")                  zsh ~/.config/scripts/dmenu/dm-polybar.sh ;;
    "   sxhkd")                    alacritty -e nvim ~/.config/sxhkd/sxhkdrc  ;;
    "   zsh")                      alacritty -e nvim ~/.zshrc  ;;
	*) exit 1 ;;
esac

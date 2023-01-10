case "$(printf "bspwm\nsxhkd\nzsh" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
	 "bspwm") 	bspc wm -r ;;
 	 "sxhkd")	pkill -USR1 -x sxhkd ;;
 	 "zsh")		source ~/.zshrc ;;
	*) exit 1 ;;
esac

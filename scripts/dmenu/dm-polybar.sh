case "$(printf "1 bar\n1 monitor, 2 bars\n2 monitors, 2 bars\n2 monitors, 2 bars - colored" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
	"1 bar") cp ~/.config/polybar/launch_single_bar.sh ~/.config/polybar/launch.sh ;;
     "1 monitor, 2 bars") cp ~/.config/polybar/launch_1mon_2bar.sh ~/.config/polybar/launch.sh  ;;
     "2 monitors, 2 bars") cp ~/.config/polybar/launch_2mon_2bar.sh ~/.config/polybar/launch.sh ;;
     "2 monitors, 2 bars - colored") cp ~/.config/polybar/launch_2mon_2bar_colors.sh ~/.config/polybar/launch.sh ;;
	*) exit 1 ;;
esac
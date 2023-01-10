case "$(printf "geany\nnano\nvscode" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
	 "geany") 	geany ;;
     "nano")    alacritty -e nano $config_file ;;
 	 "vscode")	code ;;
	*) exit 1 ;;
esac

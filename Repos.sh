## Copy GitHub Repos
options=("BSPWM" "Catppuccin" "config" "Wallpaper")
cd ~ && mkdir GitHub && cd GitHub
# Zeichenfolge, um die ausgewählten Optionen zu speichern
selected_options=""

# Benutzer wird aufgefordert, Optionen auszuwählen
selected_options=$(whiptail --title "Link Files to ~/.config" --separate-output --checklist "Choose all configfiles to link:" 15 40 4 \
"BSPWM" "" off \
"Catppuccin" "" off \
"config" "" off \
"Wallpaper" "" off 3>&1 1>&2 2>&3)

# Ausgewählte Optionen verarbeiten
if [ $? -eq 0 ]; then
  echo "Ausgewählte Optionen: $selected_options"
  for option in $selected_options; do
    case "$option" in
      "BSPWM")
        git clone https://github.com/d3athang3l/bspwm
        ;;
      "Catppuccin")
        git clone https://github.com/d3athang3l/catppuccin
        ;;
      "config")
        git clone https://github.com/d3athang3l/config
        ;;
      "Wallpaper")
        git clone https://github.com/d3athang3l/Wallpaper
        ;;
    esac
  done
else
  echo "Abgebrochen."
fi

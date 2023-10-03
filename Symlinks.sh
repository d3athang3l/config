options=("Fish" "Fonts" "Icons" "Kitty - Frappe, Sapphire" "Sublime" "Starship - Frappe" "Sysfetch" "Themes")
selected_options=""
selected_options=$(whiptail --title "Link Files to ~/.config" --separate-output --checklist "Choose all configfiles to link:" 20 60 4 \
"Fish" "" off \
"Fonts" "" off \
"Icons" "" off \
"Kitty - Frappe, Sapphire" "" off \
"Sublime" "" off \
"Starship - Frappe" "" off \
"Sysfetch" off \
"Themes" "" off 3>&1 1>&2 2>&3)

if [ $? -eq 0 ]; then
  echo "Selected Symlinks: $selected_options"
  for option in $selected_options; do
    case "$option" in
      "Fish")
        rm ~/.config/fish/config.fish
        mkdir ~/.config/fish
        ln -s ~/GitHub/config/Files/config.fish ~/.config/fish/config.fish
        ;;
      "Fonts")
        ln -s ~/GitHub/config/Fonts ~/.local/share/fonts
        ;;
      "Icons")
        ln -s ~/GitHub/config/Icons ~/.local/share/icons
        ;;
      "Kitty - Frappe, Sapphire")
        mkdir ~/.config/kitty
        ln -s ~/GitHub/config/Files/kitty-Frappe-Sapphire ~/.config/kitty/kitty.conf
        ;;
      "Sublime")
        ln -s ~/GitHub/config/Files/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/Preferences.sublime-settings
        ;;
      "Starship - Frappe")
        ln -s ~/GitHub/config/Files/starship-frappe.toml ~/.config/starship.toml
        ;;
      "Themes")
        ln -s ~/GitHub/config/Themes ~/.local/share/themes
        ;;
    esac
  done
else
  echo "Abgebrochen."
fi

#!/bin/zsh
formatted_themes=$(cat ~/.config/scripts/themes.txt)
selected_theme=$(echo "$formatted_themes" | dmenu -g 3 -l 20 -X 0 -Y 0 -W 680 -p "ohmyzsh theme:")
selected_theme="$selected_theme"
# Ändern Sie das aktuelle ohmyzsh-Thema
sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"$selected_theme\"/g" ~/.zshrc

# Laden Sie die Änderungen neu
source ~/.zshrc

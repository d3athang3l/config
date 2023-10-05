#!/bin/bash
git config --global user.email "leon_gross@icloud.com"
git config --global user.name "d3athang3l"
# Prüfen, ob Whiptail installiert ist
if ! command -v whiptail &> /dev/null; then
  echo "Whiptail ist nicht installiert. Bitte installieren Sie es zuerst."
  exit 1
fi

# Funktion zur Paketauswahl mit Whiptail
choose_packages() {
  selected_packages=$(whiptail --separate-output --checklist "Wählen Sie die zu installierenden Pakete aus:" 20 60 6 \
    "vivaldi" "" OFF \
    "dolphin" "" OFF \
    "dunst"   "" OFF \
    "ulauncher" "" OFF \
    "gedit" "" OFF \
    "sublime-text-4" "" OFF \
    "visual-studio-code-bin" "" OFF \
    "ncdu" "" OFF \
    "bpytop" "" OFF \
    "kitty" "" OFF \
    "fish" "" OFF \
    "starship" "" OFF \
    "vlc" "" OFF \
    "audacity" "" OFF \
    "cava" "" OFF \
    "discord" "" OFF \
    "conky" "" OFF \
    "polybar" "" OFF \
    "plank" "" OFF \
    "ark" "" OFF 3>&1 1>&2 2>&3)
}

# Paketauswahl aufrufen
choose_packages

# Überprüfen, ob der Benutzer die Auswahl abgebrochen hat
if [ $? -eq 0 ]; then
  echo "################################################################"
  echo "##                       Intall packages                      ##"
  echo "################################################################" 
  echo "Installiere ausgewählte Pakete: $selected_packages"
  paru -S --noconfirm $selected_packages
else
  echo "Paketinstallation abgebrochen."
fi

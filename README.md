# config
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/ArchSetup)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/ArchSetup)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/ArchSetup)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/ArchSetup)
</br>
</br>

# yay AUR-Helper
```bash
git clone https://aur.archlinux.org/yay && cd yay
makepkg -si
cd .. && rm -r yay/
``` 
</br>
</br>

# Themes, Icons and Cursor
```bash
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme && cd cd WhiteSur-gtk-theme
./install.sh
./install.sh -t red
./install.sh -t green
```
```bash
git clone https://github.com/vinceliuice/McMojave-circle && cd McMojave-circle
./install.sh
./install.sh -red
./install.sh - green
```
```bash
git clone https://github.com/vinceliuice/WhiteSur-icon-theme && cd WhiteSur-icon-theme
./install.sh
./install.sh -t red
./install.sh -t green
```
```bash
yay -S apple_cursor
```
```bash
sudo mkdir /usr/share/fonts/custom
sudo cp Fonts/* /usr/share/fonts/custom
``` 
```bash
sudo mkdir /usr/share/wallpaper
sudo cp Wallpaper/* /usr/share/Wallpaper
```
> Additionally the Catppuccin wallpapers from my other [Repo](https://github.com/Pfeffimann18/Catppuccin/#wallpapers)
</br>

## Firefox
```bash
mkdir ~/.mozilla/firefox/*.default-release/chrome
cp firefox/userChrome.css ~/.mozilla/firefox/*.default-release/chrome
```
> 
```bash
git clone https://github.com/vinceliuice/WhiteSur-firefox-theme.git && cd WhiteSur-firefox-theme
./install.sh -a
cp Macchiato.css ~/.mozilla/firefox/firefox-themes/Monterey/colors/dark.css
cp Frappe.css ~/.mozilla/firefox/firefox-themes/Monterey/colors/dark.css
```

</br> </br> 

# [ZSH](https://github.com/Pfeffimann18/ZSH)-Alias
```bash
alias ls='logo-ls'
alias uhr='tty-clock -s -c -B -C1'
alias v="nvim"

alias zconfig='nvim ~/.zshrc'
alias zsource='source ~/.zshrc'
alias bspwmconf='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='nvim ~/.config/sxhkd/sxhkdrc'
alias sxrestart='pkill -USR1 -x sxhkd'
alias firefox-pv='firefox --private-window'
```
</br>

## Neofetch
|Neofetch (default)                                          |Neofetch (Terminal)                                          |
|------------------------------------------------------------|-------------------------------------------------------------|
|![Neofetch](https://thumbs2.imgbox.com/b7/42/nDFEiBOL_t.png)|![Neofetch](https://thumbs2.imgbox.com/28/9e/74rwM13a_t.png)"|

# [bspwm](https://github.com/Pfeffimann18/bspwm)
<p align="center">
  <img src="https://thumbs2.imgbox.com/e6/62/ICmJNbVO_t.png" width="900px">
</p>


# Programme
</br>

## Neovim - IDE
<p align="center">
  <img src="https://thumbs2.imgbox.com/31/40/NoVRnlOX_t.png" width="900px">
</p>

```bash
yay -S neovim
rm -r ~/.config/nvim
cp -r nvim ~/.config/nvim
```

## Grundlegende Programme
```bash
sudo pacman -S firefox nvim thunderbird neofetch git code python-spotdl conky
```

## GTK Apps
```bash
sudo pacman -S file-roller thunar nautilus tilix
```

## Qt5 Apps
```bash
sudo pacman -S gwenview dolphin ark konsole kshutdown
```

## CLI Apps
```bash
sudo pacman -S neovim alacritty btop rofi emacs ranger
```

```bash
yay -S emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
```
> [Doom Emacs](https://github.com/doomemacs/doomemacs)
> [Purify](https://github.com/kyoz/purify)

## Medien
```bash
sudo pacman -S gimp vlc rhythmbox audacity
yay -S davinci-resolve
```

# sonstige Anpassungen

## `ls` mit Icons
```bash
yay -S logo-ls
alias ls=logo-ls
which ls
grep -r 'alias[ \t]\+ls' ~ /etc
```
</br> </br>

## Konfigurationsdateien kopieren und bearbeiten
```bash
cp alacritty.yml ~/.config
cp picom.conf ~/.config/
```
Open `/etc/pacman.conf` and add `ParallelDownloads = 5`, `Color` and `ILoveCandy`. 
</br> </br>

## Touchpad - Tippen um zu Klicken
```
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
```
- to activate the left click by tapping on the touchpad 
</br> </br>

## [LY](https://github.com/fairyglade/ly) - Displaymanager
LY is a lightweight display manager in a console design.

<p align="center">
  <img src="https://thumbs2.imgbox.com/33/8e/ahK81Qtk_t.png" width="900px">
</p>

```
yay -S ly
sudo systemctl disable lightdm.service
sudo systemctl enable ly.service
```
</br> </br>

## rEFInd - Bootmanager
Installs the rEFInd boot manager and the macOS theme.

<p align="center">
  <img src="https://thumbs2.imgbox.com/4b/f5/V9FDFr5B_t.png" width="900px">
</p>

```
refind-install
sudo cp -r refind/Catppuccin /boot/efi/EFI
```
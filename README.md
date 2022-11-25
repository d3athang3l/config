# ArchBasicSetup
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/ArchSetup)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/ArchSetup)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/ArchSetup)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/ArchSetup)
</br>

## yay AUR-Helper
```bash
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd ..
rm -r yay/
``` 
<br />

## [ZSH](https://github.com/Pfeffimann18/ZSH)
```bash
bash ZSH_install.sh
```
</br>

# Programme

## Grundlegende Programme
```bash
sudo pacman -S firefox thunderbird neofetch git code
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
sudo pacman -S rofi ranger alacritty bashtop emacs
```

```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
```
> [Doom Emacs](https://github.com/doomemacs/doomemacs)

## Medien
```bash
sudo pacman -S gimp vlc
yay -S davinci-resolve
```

# sonstige Anpassungen

## Fonts
```bash
sudo cp Fonts/* /usr/share/fonts/TTF
``` 
</br>

## Wallpaper
```bash
sudo mkdir /usr/share/wallpaper
sudo cp Wallpaper/* /usr/share/Wallpaper
```
</br>

## Konfigurationsdateien kopieren
```bash
cp picom.conf ~/.config/
cp nanorc /etc
cp pacman.conf /etc
```
</br>

## Touchpad - Tippen um zu Klicken
```
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
```
- zum Aktivieren des Linksklick durch tippn auf dem Touchpad 
<br />

## [LY](https://github.com/fairyglade/ly) - Displaymanager
LY ist ein schlichter Displaymanager im Konsolen-Design.

<p align="center">
  <img src="https://thumbs2.imgbox.com/33/8e/ahK81Qtk_t.png" width="900px">
</p>

```
yay -S ly
sudo systemctl disable lightdm.service
sudo systemctl enable ly.service
```
</br>

## rEFInd - Bootmanager
Installiert den rEFInd-Bootmanager und das macOS-Thema.

<p align="center">
  <img src="https://thumbs2.imgbox.com/4b/f5/V9FDFr5B_t.png" width="900px">
</p>

```
refind-install
sudo cp -r refind /boot/efi/EFI
```
</br>
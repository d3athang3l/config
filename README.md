# ArchBasicSetup
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/ArchSetup)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/ArchSetup)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/ArchSetup)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/ArchSetup)
</br>

# yay AUR-Helper
```bash
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd ..
rm -r yay/
``` 
<br />

# Themes
```
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -t red
./install.sh
```
```
git clone https://github.com/vinceliuice/McMojave-circle.git
cd McMojave-circle
./install.sh -red
./install.sh
```

# [ZSH](https://github.com/Pfeffimann18/ZSH)
```bash
neofetch --config ~/.config/neofetch/configZSH.conf

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.local/bin:$PATH
alias ls='logo-ls'
alias uhr='tty-clock -s -c -B -C1'
alias zconfig='nano ~/.zshrc'
alias zsource='source ~/.zshrc'
alias sxrestart='pkill -USR1 -x sxhkd'

ZSH_THEME="gnzh"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-autosuggestions zsh-syntax-highlighting git archlinux sudo)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/home/leon/.spicetify

```
</br>

# Programme

## Grundlegende Programme
```bash
sudo pacman -S firefox thunderbird neofetch git code python-spotdl conky conky-manager
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
sudo pacman -S rofi ranger alacritty btop emacs
```

```bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install
```
> [Doom Emacs](https://github.com/doomemacs/doomemacs)
> [Purify](https://github.com/kyoz/purify)

## Medien
```bash
sudo pacman -S gimp vlc rhythmbox
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

## Fonts
```bash
sudo mkdir /usr/share/fonts/custom
sudo cp Fonts/* /usr/share/fonts/custom
``` 
</br>

## Wallpaper
```bash
sudo mkdir /usr/share/wallpaper
sudo cp Wallpaper/* /usr/share/Wallpaper
```
Zusätzlich noch die Catppuccin-Wallpaper aus meiner anderen [Repo](https://github.com/Pfeffimann18/Catppuccin/#wallpapers)
</br>

## Konfigurationsdateien kopieren und bearbeiten
```bash
cp alacritty.yml ~/.config
cp picom.conf ~/.config/
```
Öffnen sie danach `/etc/nanorc` und aktivieren sie Syntax-Highlighting. Anschließend öffnen sie `/etc/pacman.conf` und fügen `ParallelDownloads = 5`, `Color` und `ILoveCandy` ein. 
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
sudo cp -r refind/Catppuccin /boot/efi/EFI
```
</br>

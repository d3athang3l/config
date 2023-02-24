ln -s ~/GitHub/config/conky.conf ~/.config
ln -s ~/GitHub/config/nvim ~/.config
ln -s ~/GitHub/config/neofetch ~/.config
ln -s ~/GitHub/config/fonts ~/.local/share
ln -s ~/GitHub/config/.zshrc ~/.zshrc


ln -s ~/GitHub/config/polybar/ ~/.config
ln -s ~/GitHub/config/scripts ~/.config
ln -s ~/GitHub/config/picom.conf ~/.config

# BSPWM
rm ~/.config/bspwm/bspwmrc
rm ~/.config/sxhkd/sxhkdrc
ln -s ~/GitHub/config/bspwmrc ~/.config/bspwm/
ln -s ~/GitHub/config/sxhkdrc ~/.config/sxhkd/


# Alacritty
mkdir .config/alacritty
ln -s ~/GitHub/config/Alacritty/AlacrittyBSPWM.yml ~/.config/alacritty/alacritty.yml
ln -s ~/GitHub/config/Alacritty/AlacrittyDesktop.yml ~/.config/alacritty/alacritty.yml
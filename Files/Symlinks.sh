ln -s ~/GitHub/config/Files/conky.conf ~/.config
ln -s ~/GitHub/config/nvim ~/.config
ln -s ~/GitHub/config/neofetch ~/.config
ln -s ~/GitHub/config/fonts ~/.local/share
ln -s ~/GitHub/config/.zshrc ~/.zshrc
ln -s ~/GitHub/config/Files/kitty ~/.config/kitty/kitty.conf


ln -s ~/GitHub/config/polybar/ ~/.config
ln -s ~/GitHub/config/scripts ~/.config
ln -s ~/GitHub/config/Files/picom.conf ~/.config

# BSPWM
rm ~/.config/bspwm/bspwmrc
rm ~/.config/sxhkd/sxhkdrc
ln -s ~/GitHub/config/Files/bspwmrc ~/.config/bspwm/
ln -s ~/GitHub/config/Files/sxhkdrc ~/.config/sxhkd/


# Alacritty
mkdir .config/alacritty
ln -s ~/GitHub/config/Files/AlacrittyBSPWM.yml ~/.config/alacritty/alacritty.yml
ln -s ~/GitHub/config/Alacritty/AlacrittyDesktop.yml ~/.config/alacritty/alacritty.yml

rm ~/.config/fish/config.fish
ln -s ~/GitHub/config/Files/config.fish ~/.config/fish/config.fish

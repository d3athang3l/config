if status is-interactive
    # Commands to run in interactive sessions can go here
end

pfetch
set fish_greeting

export SUDO_EDITOR="nvim"
export STARSHIP_CONFIG=~/example/non/default/path/starship.toml

abbr -a s 'sudo'
abbr -a n 'nvim'


abbr -a ys 'yay -S'
abbr -a yr 'yay -R'
abbr -a ysy 'yay -Sy'
abbr -a ysyu 'yay -Syu'

abbr -a sc 'sudo systemctl'
abbr -a se 'sudo -e'
abbr -a gc 'git clone'
abbr -a  ls 'exa --icons --color=always -l'
abbr -a  uhr 'tty-clock -s -c -B -C'

abbr -a ZSH '~/.zshrc'
abbr -a szsh 'source ~/.zshrc'
abbr -a FISH '~/.config/fish/config.fish'
abbr -a sfish 'source ~/.config/fish/config.fish'

abbr -a sxrestart 'pkill -USR1 -x sxhkd'



abbr -a  setlocales 'sudo localectl set-x11-keymap de-latin1-nodeadkeys && sudo localectl set-locale LANG=de_DE.UTF-8'

#bindkey -s "^[OM" "^M" 

# starship init fish | source

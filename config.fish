if status is-interactive
    # Commands to run in interactive sessions can go here
end
pfetch

set fish_greeting
export SUDO_EDITOR="nvim"

abbr -a s 'sudo'
abbr -a n 'nvim'
abbr -a sfish 'source ~/.config/fish/config.fish'
abbr -a ys 'yay -S'
abbr -a ysy 'yay -Sy'
abbr -a ysyu 'yay -Syu'
abbr -a yr 'yay -R'
abbr -a sc 'sudo systemctl'
abbr -a se 'sudo -e'
abbr -a gc 'git clone'

alias uhr='tty-clock -s -c -B -C1'
alias ls='exa --icons --color=always -l'

alias setlocales="sudo localectl set-x11-keymap de-latin1-nodeadkeys && sudo localectl set-locale LANG=de_DE.UTF-8"

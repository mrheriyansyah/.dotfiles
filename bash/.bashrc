#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ----------------------------------------------
# ALIASES
# ----------------------------------------------

alias dotfiles='cd ~/.dotfiles'
alias config='cd ~/.config'

# Edit config files
alias hconf='nvim ~/.config/hypr/hyprland.conf'
alias hlockconf='nvim ~/.config/hypr/hyprlock.conf'
alias hidleconf='nvim ~/.config/hypr/hypridle.conf'
alias barconf='nvim ~/.config/waybar/config.jsonc'
alias barstyle='nvim ~/.config/waybar/style.css'
alias bashconf='nvim ~/.bashrc'
alias wlogconf='nvim ~/.config/wlogout/layout'
alias wlogstyle='nvim ~/.config/wlogout/style.css'
alias fetchconf='nvim ~/.config/fastfetch/config.jsonc'

# Git add commit push automation
alias push='sh push.sh'

# ----------------------------------------------
# AUTOSTARTS
# ----------------------------------------------

# Start ssh-agent if not running
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    eval "$(ssh-agent -s)"
#fi

# Add SSH key if not already added
#ssh-add -l >/dev/null 2>&1 || ssh-add ~/.ssh/id_rsa


# PYWAL
# Import colorscheme from 'wal' asynchronously
# & # Run the process in the background
# ( ) # Hide shell job controll message
(cat ~/.cache/wal/sequences &)

# ----------------------------------------------
# ENV VARIABLES
# ----------------------------------------------

# Japanese input
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

# ----------------------------------------------
# OH-MY-POSH
# ----------------------------------------------

eval "$(oh-my-posh init bash --config 'takuya')"

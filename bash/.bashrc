#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ----------------------------------------------
# AUTOSTARTS
# ----------------------------------------------

# Start ssh-agent if not running
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)"
fi

# Add SSH key if not already added
ssh-add -l >/dev/null 2>&1 || ssh-add ~/.ssh/id_rsa

# ----------------------------------------------
# ENV VARIABLES
# ----------------------------------------------

# Japanese input
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

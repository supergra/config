# Help me, I only know csh!!
# #
# /etc/profile
#        The systemwide initialization file, executed for login shells
# ~/.bash_profile
#        The personal initialization file, executed for login shells
# ~/.bashrc
#        The individual per-interactive-shell startup file
# ~/.bash_logout
#        The individual login shell cleanup file, executed when a login shell exits
# ~/.inputrc
#        Individual readline initialization file

# Path DOES start with several system-level items:
# /usr/local/bin # <-- tons of custom installed stuff (often overriding next)
#     # [brew installs here]
# /usr/bin # Grep, tr, perl, python(link), git, make
# /bin # cat,ls
# /usr/sbin # utils requiring sudo,
# /sbin # low-level utils requiring sudo
# /opt/X11/bin

# bash completion
# https://debian-administration.org/article/317/An_introduction_to_bash_completion_part_2
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Delete key doesn't work by defaults [prints tildes]
bind '"\e[3~": delete-char'

# WARNING: Only use "$HOME" in path. "~" doesn't work
# However ~ seems to work in aliases


# Define these so that appends works more easily
export PYTHONPATH=""
export DYLD_LIBRARY_PATH=""

alias resource='source ~/.bashrc'

# alias less='less -Rf'  # -Rf allows colors to be displayed
alias more='less -R'

alias sbl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias mm="sbl -n $HOME/metalmachine/metalmachine.sublime-project"
alias cdmm="cd $HOME/metalmachine/"

# Git shortcuts
alias gp='git push'
alias gstat='git status'
alias githash='git rev-parse HEAD'
alias ghash='githash'

# ls colors
alias ls='ls -Gh'
# LSCOLORS is for mac, LS_COLORS for linux
export LSCOLORS=ExFxBxDxCxegedabagacad
# export LS_COLORS="di=34;1:ln=35:ex=1;32:" # 1 = bold, # is color


# GREP COLOR!!!
export GREP_OPTIONS='--color=auto'
# export GREP_COLOR='1;30;40' # Dark
export GREP_COLOR='1;35;40'

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37
PS1="\[\033[1;34m\]\u\[\033[0;30m\]:\w> "

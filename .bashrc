#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[\033[38;5;1m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\]@\[$(tput sgr0)\]\[\033[38;5;12m\]\h\[$(tput sgr0)\]\[\033[38;5;1m\]]-[\[$(tput sgr0)\]\[\033[38;5;13m\]\w\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

PATH=$PATH:~/scripts/:~/go/bin

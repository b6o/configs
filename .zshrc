HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/pat/.zshrc'

autoload -Uz compinit
compinit
PROMPT="%F{167}%n%f@%F{167}%m%f:%F{119}%~%f %F{63}»%f "

alias ls="ls --color"

alias win-open="cmd.exe /c start"

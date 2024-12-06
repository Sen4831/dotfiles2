alias i="sudo pacman -S"
alias m="make"
alias n="nvim"
alias v="vim"
alias c="clear"

if [ -x "$(command -v batcat)" ]; then
    alias bat="batcat"
fi

if [ -x "$(command -v eza)" ]; then
    alias ls="eza"
    alias la="eza --long --all --group"
fi

if [ -x "$(command -v kitten)" ]; then
    alias icat="kitten icat"
    alias issh="kitten ssh"
    alias idiff="kitten diff"
fi

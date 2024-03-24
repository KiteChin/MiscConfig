#! /bin/bash

installEnable=$1

if [ "$installEnable" -eq 1 ]
then
    cp ./.gitconfig ~/
    cp ./.zsh_history ~/
    cp ./.zshrc ~/
    mkdir -p ~/.config/ranger/
    cp ./rc.conf ~/.config/ranger/
    cp ./rifle.conf ~/.config/ranger/
    mkdir -p ~/.config/terminator
    cp ./config ~/.config/terminator/
else
    cp ~/.gitconfig ./
    cp ~/.zsh_history ./
    cp ~/.zshrc ./
    cp ~/.config/ranger/rc.conf ./
    cp ~/.config/ranger/rifle.conf ./
    cp ~/.config/terminator/config ./
fi

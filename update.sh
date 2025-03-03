#! /bin/bash

installEnable=$1

if [ "$installEnable" -eq 1 ]
then
    cp ./.gitconfig ~/
    cp ./.zsh_history ~/
    cp ./.zshrc ~/
    mkdir -p ~/.config/yabai/
    cp -r ./yabai ~/.config/
    mkdir -p ~/.config/skhd/
    cp -r ./skhd ~/.config/
    mkdir -p ~/.config/yazi/
    cp -r ./yazi ~/.config/
    mkdir -p ~/.config/kitty/
    cp -r ./kitty ~/.config/
    echo "install success"
else
    cp ~/.gitconfig ./
    cp ~/.zsh_history ./
    cp ~/.zshrc ./
    cp -r ~/.config/yabai ./
    cp -r ~/.config/skhd ./
    cp -r ~/.config/yazi ./
    cp -r ~/.config/kitty ./ 
    echo "update success"
fi

# virtualbox install oh-my-zsh before running the update.sh
# sudo apt install git make ranger ssh neovim zsh curl
# install oh-my-zsh 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

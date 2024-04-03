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
    echo "install success"
else
    cp ~/.gitconfig ./
    cp ~/.zsh_history ./
    cp ~/.zshrc ./
    cp ~/.config/ranger/rc.conf ./
    cp ~/.config/ranger/rifle.conf ./
    cp ~/.config/terminator/config ./
    echo "update success"
fi

# virtualbox install oh-my-zsh before running the update.sh
# sudo apt install git make ranger ssh neovim zsh curl
# install oh-my-zsh 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

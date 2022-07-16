#!/bin/bash

# Packages to be installed
PACKAGES=("neovim" "ranger" "python3" "zsh")


# Updates System and Installs Packages

echo "Updating System...";
sudo apt update && sudo apt upgrade; 2>&1;
echo "DONE";


echo "Installing Packages..."
for pkgs in ${PACKAGES[@]}; do

        sudo apt install $pkgs;  2>&1;
done
echo "DONE";

# Makes folders
echo "Making folders...";
        mkdir -p \
                $HOME/Downloads \
                $HOME/Documents/coding/python \
                $HOME/.config/nvim
echo "DONE";

# Pulls .alias and .zshrc files, saves them in /home/"$USER"/

        echo "Gettings .(dot)-files...";

        git clone https://github.com/dannydiaz17/linux-config.git $HOME/linux-config
        mv $HOME/linux-config/.alias $HOME/.alias;
        mv $HOME/linux-config/.zshrc $HOME/.zshrc;
        mv $HOME/linux-config/init.vim $HOME/.config/nvim/init.vim;
        mv $HOME/linux-config/.profile $HOME/.profile;


        #curl 'https://gist.githubusercontent.com/dannydiaz17/9598a58b37be7e2b64c5314adc33a832/raw/' >        #curl 'https://gist.githubusercontent.com/dannydiaz17/67f9ec0e59f9f8494be3138c73405634/raw/' >        #curl 'https://gist.githubusercontent.com/dannydiaz17/74bc332897c46510d05c0a22c81e309d/raw/' >        echo "DONE";


# Changes "$SHELL" to ZSH

        echo "Changing Shell..."; chsh -s /usr/bin/zsh; /usr/bin/zsh;
        echo "Enjoy!";
        

#!/bin/bash

# Command shortcut for managing .dot-files
dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"

# Packages to be installed
PACKAGES="neovim ranger python3 zsh gopass git"


# Updates System and Installs Packages
echo "Updating System...";
	sudo apt update && sudo apt upgrade
echo "DONE";

echo "Installing Packages..."
	sudo apt install $PACKAGES
echo "DONE";


# Makes folders
echo "Making folders...";
        mkdir -p \
                $HOME/Downloads \
                $HOME/Documents/coding/python 
echo "DONE";

# Pulls .alias and .zshrc files, saves them in /home/"$USER"/

echo "Getting .(dot)-files...";
	git clone -b debian --bare git@github.com:dannydiaz17/linux-config.git $HOME/.dot
	$dot remote add -t debian origin git@github.com:dannydiaz17/linux-config.git
	$dot branch --set-upstream-to=debian
	$dot checkout -f
	gopass git clone git@github.com:dannydiaz/gopass.git ~/.password-store/.git
	gopass git remote add origin git@github.com:dannydiaz17/gopass.git; 
	gopass git branch --set-upstream-to=origin/master
echo "DONE";

echo "Setting up Git Auth...";
	git config --global user.email "daniel.diaz.oem@gmail.com"
	git config --global user.name "Danny Diaz"
	git config --global credential.credentialStore gpg 

	curl -LO https://raw.githubusercontent.com/GitCredentialManager/git-credential-manager/main/src/linux/Packaging.Linux/install-from-source.sh && sh ./install-from-source.sh && git-credential-manager-core configure
	ssh-keygen -t ed25519 -C "daniel.diaz.oem@gmail.com";
	less $HOME/.ssh/id_ed25519.pub; echo "Add this Public Key to GitHub";
	eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_ed25519; sleep 2; 
	gpg --gen-key; echo "Secret Key?";
	gpg --list-secret-keys --keyid-format=long | less;
	read KEY; gpg --armor --export $KEY

# Changes "$SHELL" to ZSH

echo "Changing Shell...";
	chsh -s /usr/bin/zsh; echo "Enjoy!"; /usr/bin/zsh;

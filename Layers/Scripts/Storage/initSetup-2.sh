#! /bin/sh

echo "Configuring Personal Archives"
cd ~
git clone git@github.com:IronShark-Studios/Apocrypha.git
git clone git@github.com:IronShark-Studios/Grimoire.git
cd ~/Projects
git clone git@github.com:IronShark-Studios/Technonomicon.git
git clone git@github.com:IronShark-Studios/IronShark-Studios.github.io.git
mv Iron-Shark.github.io Personal-Blog
cd ~
echo

echo
echo "Home Directory Set Up Complete, configuring R-clone connection"
echo
echo "This link must be opened with chromium"
mkdir -p ~/.config/beancount/
mkdir -p ~/Apocrypha/Remote/
rclone config create G-Drive drive
echo

echo "Please press enter to continue"
echo "after confirming login"
read -r ConfirmationInput
echo

cd ~

echo "configuring npm global settings"
mkdir -p ~/.npm-packages
npm config set prefix '~/.npm-packages'
echo "installing npm tree-sitter-cli globally"
npm install -g tree-sitter-cli

echo "Remember to update Tn.Key and hardware file, then rebuild system and reboot"

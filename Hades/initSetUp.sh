#! /bin/sh

echo "This script is meant to be run after the initial set up"
echo "of the local system and WebBrowser"
echo "including downloading of app-images"
echo "and encryption keys from Google Drive"

echo "Unlock user secrets with 'git-crypt unlock ~/path/to/key'"
echo "Please press enter to continue"
read -r ConfirmationInput
echo

echo "Configuring Home Directory"
cd ~
mkdir ~/.ssh
mkdir ~/Projects
mkdir ~/Media
mkdir ~/G-Drive
echo

echo "Creating System SSH-Key"
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
echo

echo "Please press enter after configuring git-source SSH."
read -r ConfirmationInput
echo

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

echo "Configuring Doom Emacs"
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
mkdir ~/.config/doom
cd ~/.emacs.d
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d	
~/.emacs.d/bin/doom install
emacs --batch -f nerd-icons-install-fonts
echo

echo "Updating Machine Files"
cd ~tn/Hades
rm ./hardware-configuration.nix
cp /etc/nixos/hardware-configuration.nix ./hardware-configuration.nix

cd ~tn/Layers/User/Firefox/Zen
cp ~/Downloads/zen-specific.AppImage ./

cd ~tn/Layers/User/Art-Tools/Allusion
cp ~/Downloads/Allusion-1.0.0-rc.10.AppImage ./

cd ~tn/Layers/User/Art-Tools/PureRef 
cp ~/Downloads/PureRef-1.11.1_x64.Appimage ./

cd ~tn/Layers/User/Knowledge-Tools/Obsidian
cp ~/Downloads/Obsidian-1.7.4.AppImage

cd ~tn
cp ~/Downloads/Tn.key ./

cd ~

echo
echo "Home Directory Set Up Complete, configuring R-clone connection"
echo
echo "This link must be opened with chromium"
rclone config create G-Drive drive
echo
echo "Please press enter to continue"
echo "after confirming login"
read -r ConfirmationInput
echo

echo "Updating and Rebuilding System"
Upgrade
Rebuild

echo "system set up complete, please reboot"

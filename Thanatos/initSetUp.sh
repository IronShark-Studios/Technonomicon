#! /bin/sh

echo "This script is meant to be run after the initial set up of the local system"
echo "Please press enter to continue"
read -r ConfirmationInput
echo

echo "Configuring Home Directory"
cd ~
mkdir ~/.ssh
mkdir ~/Projects
mkdir ~/Media
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
git clone git@github.com:IronShark-Studios/Feronomicon.git
cd ~/Projects
git clone git@github.com:IronShark-Studios/Tn-Final.git
git clone git@github.com:IronShark-Studios/Iron-Shark.github.io.git
mv Iron-Shark.github.io Personal-Blog
cd ~
echo
echo
echo "Home Directory Set Up Complete"

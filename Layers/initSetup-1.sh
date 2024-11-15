#! /bin/sh

echo "This script is meant to be run after the initial set up"
echo "of FireFox and encryption keys from Google Drive"

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

echo "Please press enter after configuring git-source SSH to test connection."
read -r ConfirmationInput
echo

ssh -T git@github.com

echo "Please run Set Up 2 script"

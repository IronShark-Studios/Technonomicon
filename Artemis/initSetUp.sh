#! /bin/sh

echo "This script is meant to be run after the initial set up of the local system"
echo "Please press enter to continue"
read -r ConfirmationInput
echo

echo "Configuring Home Directory"
cd ~
mkdir ~/Media
echo

echo "Configuring Personal Archives"
git clone git@github.com:IronShark-Studios/Tn-Final.git
echo
echo "Home Directory Set Up Complete"

echo "To configure system sound"
echo "Use 'pavucontrol' to set desired output"
echo
echo "Then use 'wpctl status' to display wich out put is active"
echo
echo "Finally use 'wpctl set-default #' with '#' bening the number of the active sink"

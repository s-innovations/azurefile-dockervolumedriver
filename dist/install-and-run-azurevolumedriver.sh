#!/bin/bash
# Call this script with account name and storage key parameters
# sh scriptname name key

echo "Setting up Volume Driver"
echo "Connection Info"
echo $1
echo $2
git clone https://github.com/s-innovations/azurefile-dockervolumedriver.git
sudo ./azurefile-dockervolumedriver/dist/azurefile-dockervolumedriver --account-name $1 --account-key $2 &

exit 0

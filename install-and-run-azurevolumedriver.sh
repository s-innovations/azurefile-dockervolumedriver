#!/bin/bash
# Call this script with account name and storage key parameters
# sh scriptname name key

echo "Setting up Volume Driver"

git clone https://github.com/s-innovations/azurefile-dockervolumedriver.git
sudo ./azurefile-dockervolumedriver/azurefile-dockervolumedriver --account-name $1 --account-key $2 &

exit 0

#!/bin/bash
# Call this script with account name and storage key parameters
# sh scriptname name key

echo "Setting up Volume Driver"
echo "Connection Info"
#echo $1
#echo $2


sudo wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.5.linux-amd64.tar.gz

sudo export GOROOT=/usr/local/go
sudo export PATH=$PATH:$GOROOT/bin

sudo git clone https://github.com/s-innovations/azurefile-dockervolumedriver.git src/azurefile
sudo export GOPATH=`pwd`
sudo export GO15VENDOREXPERIMENT=1
sudo cd src/azurefile
sudo go build -o azurefile

sudo ./azurefile --account-name $1 --account-key $2 &

exit 0

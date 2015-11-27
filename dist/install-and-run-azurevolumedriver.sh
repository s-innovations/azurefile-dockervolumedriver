#!/bin/bash
# Call this script with account name and storage key parameters
# sh scriptname name key

echo "Setting up Volume Driver"
echo "Connection Info"
#echo $1
#echo $2


wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.5.linux-amd64.tar.gz

export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

git clone https://github.com/s-innovations/azurefile-dockervolumedriver.git src/azurefile
export GOPATH=`pwd`
export GO15VENDOREXPERIMENT=1
cd src/azurefile
go build -o azurefile

./azurefile --account-name $1 --account-key $2 &

exit 0

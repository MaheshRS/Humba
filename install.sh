#!/bin/sh

DOWNLOAD_LOCATION="https://github.com/MaheshRS/Humba/raw/master/Scripts/resymbolicate"
USERNAME=$(whoami)
INSTALL_DIR="/Users/$USERNAME/Humba/Scripts"

rm -rf $INSTALL_DIR
mkdir -p $INSTALL_DIR
	
if grep -q -s "$INSTALL_DIR" ~/.bash_profile; then
	# Path already available
	echo "Installing ..." >&2
else
	# Path not available. Add the installation directory path $PATH env variable 
	echo "Installing ..." >&2
	echo export PATH=$PATH:$INSTALL_DIR >> ~/.bash_profile
	source ~/.bash_profile
fi

cd $INSTALL_DIR
curl -LOk $DOWNLOAD_LOCATION
chmod +x "$INSTALL_DIR/resymbolicate"
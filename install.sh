#!/bin/bash

cd /dev/shm
git clone https://github.com/mustafaozhan/Breeze-Adapta-Cursor

cd Breeze-Adapta-Cursor
PACKAGE="/usr/share/icons/Breeze-Adapta-Cursor/"

if [[ -d $PACKAGE ]]; then
    	read -p "Already installed, would you like to reinstall? [y/N] " yesno < /dev/tty

		case $yesno in
        		[yY] ) echo "OK, Reinstalling in $PACKAGE..."
                               sudo rm -r $PACKAGE && sudo mkdir $PACKAGE
                               sudo mv *.theme cursors $PACKAGE;
				;;
        		[nN] ) echo "OK, Exiting...";
                		exit 0;;
        		* ) echo "Invalid Response"
				        exit 1;;
		esac
else

	echo "Installing in $PACKAGE..."

	sudo mkdir $PACKAGE
	sudo mv *.theme cursors $PACKAGE

	echo "Done"
fi

exit 0

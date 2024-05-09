#!/bin/sh

while true; do

read -p "Installation Finished reboot? (y/n) " yn

case $yn in
 	[yY] ) echo rebooting...;
		reboot;;
        [nN] ) echo exiting...;
	      	exit;;
	* ) echo invalid response;;
esac

done

#!/bin/sh

while true; do

	read -p "Would you like to install TradingView? (y/n) " yn

	case $yn in
	[yY])
		echo installing trading view....
		sudo snap install tradingview
		;;
	[nN])
		echo continuing installation...
		break
		;;
	*) echo invalid response ;;
	esac

	sleep 4
done

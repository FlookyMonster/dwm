#!/bin/sh

if [ "$EUID" != 0 ]; then

	case $1 in
		"help")
			echo "./run-this-to-install.sh clean: Runs make clean install instead"
			echo "./run-this-to-install.sh: Runs make install"
			exit
		esac

	touch iteration_dwm_install

	echo "Run this script to install DWM. Just running "make install" will not install all of the components properly, so beware."
	
	if [ ! -f "$HOME/.autostart" ]; then 
		cp -v .autostart ~
	fi

	startdwm_script="#!/bin/sh
	\n\n/home/$USER/.autostart &
	\ndwm"

	echo -e $startdwm_script > start-dwm
	chmod +x start-dwm

	sudo "$0" "$@"
	exit $?

elif [ "$EUID" = 0 ] && [ -f "iteration_dwm_install" ]; then
	
	case $1 in
	"clean")
		make clean install;;
	*)
		make install;;
	esac
	
	rm iteration_dwm_install

else
	echo "Run this script without sudo. It will make sense later."

fi

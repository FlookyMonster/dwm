#!/bin/sh

if [ "$EUID" != 0 ]; then	
	touch iteration_dwm_install

	echo "Run this script to install DWM. Just running "make install" will not install all of the components properly, so beware."
	
	if [ ! -f "~/.autostart" ]; then 
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
	make install
	rm iteration_dwm_install

else
	echo "Run this script without sudo. It will make sense later."

fi

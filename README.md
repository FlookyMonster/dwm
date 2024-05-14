dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.
This is my own fork of the window manager.

Requirements
------------
In order to build dwm you need the Xlib header files and Xrender libraries.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm:

    make install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.

To autostart programs, create the ´~/.config/dwm´ directory and create 
a shell script which launches all of the programs you want to run at start.

Contributors and Special Thanks
-------------------------------
- https://dwm.suckless.org/patches/colorbar/
- https://dwm.suckless.org/patches/fullgaps/
- https://dwm.suckless.org/patches/systray/
- https://dwm.suckless.org/patches/alpha/
- https://dwm.suckless.org/patches/extrabar/
- nggit - https://github.com/nggit (autostart patch)
- If you're the one who made the volume/brightness control thing, please get in touch ASAṔ. I forgot who made it.
These are the list of people

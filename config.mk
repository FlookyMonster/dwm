# dwm version
VERSION = 6.2-fluff

# Customize below to fit your system

# paths

# Linux
PREFIX = /usr/local

# FreeBSD
# PREFIX = /usr/local/include

MANPREFIX = ${PREFIX}/share/man

# Linux
#x11INC = /usr/X11R6/include
#x11LIB = /usr/X11R6/lib

# FreeBSD
X11INC = /usr/local/include
X11LIB = /usr/local/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
#FREETYPEINC = /usr/include/freetype2

# OpenBSD and FreeBSD (uncomment)
FREETYPEINC = /usr/local/include/freetype2

# OpenBSD and FreeBSD (alternative as it was on the OG dwm make)
#FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC} 
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS} -lXrender

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc

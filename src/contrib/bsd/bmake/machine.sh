:
# striped down from /etc/rc_d/os.sh

# RCSid:
#	$Id: machine.sh,v 1.8 2000/02/20 14:12:26 sjg Exp $
#
#	@(#) Copyright (c) 1994 Simon J. Gerraty
#
#	This file is provided in the hope that it will
#	be of use.  There is absolutely NO WARRANTY.
#	Permission to copy, redistribute or otherwise
#	use this file is hereby granted provided that 
#	the above copyright notice and this notice are
#	left intact. 
#      
#	Please send copies of changes and bug-fixes to:
#	sjg@quick.com.au
#

OS=`uname`
OSREL=`uname -r`
#OSMAJOR=`IFS=.; set $OSREL; echo $1`
machine=`uname -m`
MACHINE=

# Great! Solaris keeps moving arch(1)
# we need this here, and it is not always available...
Which() {
	for d in `IFS=:; echo ${2:-$PATH}`
	do
		test -x $d/$1 && { echo $d/$1; break; }
	done
}

arch=`Which arch /usr/bin:/usr/ucb:$PATH`
test "$arch" && MACHINE_ARCH=`$arch`

case $OS in
*BSD)
	MACHINE=$OS.$machine
	;;
SunOS)
	case "$OSREL" in
	4.0*)	MACHINE=$MACHINE_ARCH;;
	5*)
                case "$machine" in
		sun4*)	MACHINE=solaris;;
		*)	MACHINE=solaris.$machine;;
		esac
                ;;
	esac
	;;
HP-UX)
	MACHINE_ARCH=`IFS="/-."; set $machine; echo $1`
	;;
IRIX)
	MACHINE_ARCH=`uname -p 2>/dev/null`
	;;
esac

MACHINE=${MACHINE:-$OS}
MACHINE_ARCH=${MACHINE_ARCH:-$machine}


(
case "$0" in
arch*)	echo $MACHINE_ARCH;;
*)
	case "$1" in
	"")	echo $MACHINE;;
	*)	echo $MACHINE_ARCH;;
	esac
	;;
esac
) | tr 'A-Z' 'a-z'

#
# Macro definitions for SunOS 5.7.
# $Id: sunos.5.7.mk,v 1.1 2001/02/22 08:37:58 kunishi Exp $
#
BOOTSTRAP_TOOLS=	make texinfo gperf patch
BUILD_PKGS_GNU=		make texinfo gperf patch gcc tar gzip
BUILD_PKGS_BSD=		lukemftp bmake md5
# If you don't have any C compiler, you should install gcc from 
# www.sunfreeware.com.
EXTRA_PATH=	:/usr/local/bin
CC=		/usr/local/bin/gcc

GMAKE=		gmake

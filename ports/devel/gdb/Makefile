#
# $Id: Makefile,v 1.3 2003/01/07 05:01:01 kunishi Exp $
#

PORTNAME=	gdb
VERSION=	5.2.1
PORTREV=	1

PKG=		OPUCgdb
NAME=		GNU debugger

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	${PORTNAME}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
INSTALL_TARGET=	install install-info
CLASS_INFO=	info/bfd.info info/gdb.info info/gdbint.info \
		info/mmalloc.info info/stabs.info info/standards.info \
		info/configure.info

.include <port.mk>

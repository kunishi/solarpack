#
# $Id: Makefile,v 1.1 2001/11/13 10:42:59 kunishi Exp $
#

PORTNAME=	gdb
VERSION=	5.0
PORTREV=	1

PKG=		OPUCgdb
NAME=		GNU debugger

MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/gdb/ \
		ftp://core.ring.gr.jp/pub/GNU/gdb/ \
		ftp://ftp.gnu.org/pub/gnu/gdb/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
INSTALL_TARGET=	install install-info
CLASS_INFO=	info/bfd.info info/gdb.info info/gdbint.info \
		info/mmalloc.info info/stabs.info info/standards.info

.include <port.mk>

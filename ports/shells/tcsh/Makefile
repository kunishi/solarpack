#
# $Id: Makefile,v 1.6 2000/09/21 12:36:09 kunishi Exp $
#

PORTNAME=	tcsh
VERSION=	6.09.03
PORTREV=	1

PKG=		OPENtcsh
NAME=		tcsh, and extended C-shell with many useful features
VENDOR=		Christos Zoulas <christos@gw.com>

MASTER_SITES =	ftp://ftp.astron.com/pri/

OSREL!=		/usr/bin/uname -r

GNU_CONFIGURE=	yes
INSTALL_TARGET=		install install.man
.if ${OSREL} >= 5.8
MAKE_ARGS+=	DFLAGS=-D_PATH_TCSHELL='\"$${DESTBIN}/tcsh\"'
.endif

CLASS_SHELL=	bin/tcsh

.include <port.mk>

#
# $Id: Makefile,v 1.8 2001/11/08 14:02:36 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tcsh
VERSION=	6.11
PORTREV=	1

PKG=		OPUCtcsh
NAME=		tcsh, and extended C-shell with many useful features
VENDOR=		Christos Zoulas <christos@gw.com>

MASTER_SITES =	ftp://ftp.astron.com/pub/tcsh/

OSREL!=		/usr/bin/uname -r
WRKSRC=		${WRKDIR}/${DISTNAME}.00

GNU_CONFIGURE=	yes
INSTALL_TARGET=		install install.man
.if ${OSREL} >= 5.8
MAKE_ARGS+=	DFLAGS=-D_PATH_TCSHELL='\"$${DESTBIN}/tcsh\"'
.endif

CLASS_SHELL=	bin/tcsh

.include <port.mk>

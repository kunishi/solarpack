#
# $Id: Makefile,v 1.6 2000/09/27 01:28:00 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xdaliclock
VERSION=	2.18
PORTREV=	1

PKG=		OPENxdlcl
NAME=		X melting digital clock

VENDOR=		Jamie Zawinski <jwz@jwz.org>
MASTER_SITES=	http://www.jwz.org/xdaliclock/

GNU_CONFIGURE=	yes
USE_X_PREFIX=	yes

WRKSRC=		${WRKDIR}/${DISTNAME}/X11

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1

post-install:
	${MKDIR} ${INSTPREFIX}/lib/X11/app-defaults
	${INSTALL_DATA} ${WRKSRC}/XDaliClock.ad ${INSTPREFIX}/lib/X11/app-defaults/XDaliClock

.include <port.mk>

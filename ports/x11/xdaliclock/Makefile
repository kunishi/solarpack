#
# $Id: Makefile,v 1.8 2001/03/02 09:15:22 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xdaliclock
VERSION=	2.18
PORTREV=	2

PKG=		OPENxdlcl
NAME=		X melting digital clock

VENDOR=		Jamie Zawinski <jwz@jwz.org>
MASTER_SITES=	http://www.jwz.org/xdaliclock/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--mandir='$${prefix}/share/man'
USE_X_PREFIX=	yes

WRKSRC=		${WRKDIR}/${DISTNAME}/X11

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/share/man/man1

post-install:
	${MKDIR} ${INSTPREFIX}/lib/app-defaults
	${INSTALL_DATA} ${WRKSRC}/XDaliClock.ad ${INSTPREFIX}/lib/app-defaults/XDaliClock

.include <port.mk>

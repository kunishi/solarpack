#
# $Id: Makefile,v 1.9 1999/08/27 12:10:43 kunishi Exp $
#

PKG=		PKGBbmake
NAME=		pkgbuild core tools: BSD make tool
VERSION=	2.2.1
VENDOR=		Simon J. Gerraty <sjg@quick.com.au>

DISTNAME=	bmake-${VERSION}
MASTER_SITES=	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC=		${WRKDIR}/bmake

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile.boot

CORE_TOOLS=	yes

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin

post-install:
	@${MKDIR} ${INSTPREFIX}/share/doc/bmake
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKDIR}/help/*.html ${WRKDIR}/help/*.htm \
		${INSTPREFIX}/share/doc/bmake

.include <port.mk>

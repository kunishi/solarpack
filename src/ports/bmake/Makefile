#
# $Id: Makefile,v 1.10 2000/01/05 10:29:20 kunishi Exp $
#

PKG=		PKGBbmake
NAME=		pkgbuild core tools: BSD make tool
VERSION=	2.2.3
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

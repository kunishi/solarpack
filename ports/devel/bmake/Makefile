#
# $Id: Makefile,v 1.7 1999/06/09 02:34:09 kunishi Exp $
#

PKG=		OPENbmake
NAME=		BSD make tool
VERSION=	2.1.14
VENDOR=		Simon J. Gerraty <sjg@quick.com.au>

DISTNAME=	bmake-2.1.14
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

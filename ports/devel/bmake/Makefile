#
# $Id: Makefile,v 1.11 2000/05/02 04:58:29 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBbmake
NAME=		pkgbuild core tools: BSD make tool
.else
PKG=		OPENbmake
NAME=		BSD make tool
.endif
VERSION=	2.2.3
VENDOR=		Simon J. Gerraty <sjg@quick.com.au>

DISTNAME=	bmake-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC=		${WRKDIR}/bmake

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile.boot
MAKE_ARGS+=	XDEFS='-D_PATH_DEFSYSMK=\"${PREFIX}/share/mk/sys.mk\" -D_PATH_DEFSYSPATH=\"${PREFIX}/share/mk:/usr/local/share/mk:/opt/share/mk\"'

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin

post-install:
	@${MKDIR} ${INSTPREFIX}/share/doc/bmake
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKDIR}/help/*.html ${WRKDIR}/help/*.htm \
		${INSTPREFIX}/share/doc/bmake

.include <port.mk>

#
# $Id: Makefile,v 1.12 2000/05/11 06:07:42 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBbmake
NAME=		pkgbuild core tools: BSD make tool
.else
PKG=		OPENbmake
NAME=		BSD make tool
.endif
VERSION=	3.0.2
VENDOR=		Simon J. Gerraty <sjg@quick.com.au>

DISTNAME=	bmake-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC=		${WRKDIR}/bmake
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} mk-1.1.tar.gz
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile.boot
MAKE_ARGS+=	XDEFS='-D_PATH_DEFSYSMK=\"${PREFIX}/share/mk/sys.mk\" -D_PATH_DEFSYSPATH=\"${PREFIX}/share/mk:/usr/local/share/mk:/opt/share/mk\"'

INSTALL_TARGET=	install install-man install-mk

post-extract:
	${TAR} -C ${WRKSRC} -xzf ${DISTDIR}/mk-1.1.tar.gz

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin

post-install:
	@${MKDIR} ${INSTPREFIX}/share/doc/bmake
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKSRC}/PSD.doc/tutorial.ms ${INSTPREFIX}/share/doc/bmake

.include <port.mk>

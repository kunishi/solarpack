#
# $Id: Makefile,v 1.9 2000/01/06 04:59:38 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBtxinf
.else
PKG=		GNUtxinf
.endif
NAME=		pkgbuild core tools: GNU texinfo tools
VERSION=	4.0
VENDOR=		${VENDOR_GNU}

DISTNAME=	texinfo-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/texinfo/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/texinfo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

.if defined(CORE_TOOLS)
PKG_WITHOUT_GZIP=	yes
.endif

post-install:
	${MKDIR} ${WRKDIR}${PREFIX}/share/examples/texinfo
	${INSTALL} -c -m 0644 ${WRKSRC}/dir-example \
	    ${WRKDIR}${PREFIX}/share/examples/texinfo

.include <port.mk>

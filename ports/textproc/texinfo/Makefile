#
# $Id: Makefile,v 1.9 2000/01/19 03:52:42 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBtxinf
NAME=		pkgbuild core tools: GNU texinfo tools
.else
PKG=		GNUtxinf
NAME=		GNU texinfo tools
.endif
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

PKG_WITHOUT_GZIP=	yes
EDITABLE_FILES=		info/dir
LICENSE_FILES=		%%WRKSRC%%/COPYING

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/texinfo
	${INSTALL} -c -m 0644 ${FILESDIR}/dir \
	  ${INSTPREFIX}/share/examples/texinfo
	${MKDIR} ${INSTPREFIX}/info
	${INSTALL} -c -m 0644 ${FILESDIR}/dir ${INSTPREFIX}/info

.include <port.mk>

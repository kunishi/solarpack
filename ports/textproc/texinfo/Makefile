#
# $Id: Makefile,v 1.12 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	texinfo
VERSION=	4.0
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPtxinf
NAME=		Solaris Application Packaging tools: GNU texinfo tools
.else
PKG=		GNUtxinf
NAME=		GNU texinfo tools
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/texinfo/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/texinfo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

PKG_WITHOUT_GZIP=	yes
EDITABLE_FILES=		info/dir
LICENSE_FILES=		%%WRKSRC%%/COPYING

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/${PORTNAME}
	${INSTALL} -c -m 0644 ${FILESDIR}/dir \
	  ${INSTPREFIX}/share/examples/${PORTNAME}
	${MKDIR} ${INSTPREFIX}/info
	${INSTALL} -c -m 0644 ${FILESDIR}/dir ${INSTPREFIX}/info

.include <port.mk>

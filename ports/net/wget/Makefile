#
# $Id: Makefile,v 1.11 1999/06/09 02:34:12 kunishi Exp $
#

PKG=		GNUwget
NAME=		GNU wget, a free network utility to retrieve files from the WWW
VERSION=	1.5.3
VENDOR=		${VENDOR_GNU}

DISTNAME=	wget-${VERSION}
MASTER_SITES=	ftp://psi.c.oka-pu.ac.jp/pub/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

CORE_TOOLS=	yes

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${INSTPREFIX}/share/examples/wget/sample.wgetrc

.include <port.mk>

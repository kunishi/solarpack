#
# $Id: Makefile,v 1.13 2000/01/19 02:13:28 kunishi Exp $
#

PKG=		GNUwget
NAME=		GNU wget, a free network utility to retrieve files from the WWW
VERSION=	1.5.3
VENDOR=		${VENDOR_GNU}

DISTNAME=	wget-${VERSION}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/wget.info

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${INSTPREFIX}/share/examples/wget/sample.wgetrc

.include <port.mk>

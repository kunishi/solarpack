#
# $Id: Makefile,v 1.15 2000/09/27 01:27:53 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	wget
VERSION=	1.5.3
PORTREV=	1

PKG=		GNUwget
NAME=		GNU wget, a free network utility to retrieve files from the WWW

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/wget.info

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/${PORTNAME}
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${INSTPREFIX}/share/examples/${PORTNAME}/sample.wgetrc

.include <port.mk>

#
# $Id: Makefile,v 1.16 2001/11/08 14:08:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	wget
VERSION=	1.7
PORTREV=	1

PKG=		OPUCwget
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

#
# $Id: Makefile,v 1.18 2001/11/30 12:55:30 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	wget
VERSION=	1.7.1
PORTREV=	2

PKG=		OPUCwget
NAME=		GNU wget, a free network utility to retrieve files from the WWW

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/

LIB_DEPENDS=	OPUCopssl:${PORTSDIR}/security/openssl

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-ssl
USE_GMAKE=	yes

CLASS_INFO=	info/wget.info

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/${PORTNAME}
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${INSTPREFIX}/share/examples/${PORTNAME}/sample.wgetrc

.include <port.mk>

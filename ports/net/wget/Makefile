#
# $Id: Makefile,v 1.20 2002/03/15 12:57:27 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	wget
VERSION=	1.8.1
PORTREV=	3

PKG=		OPUCwget
NAME=		GNU wget, a free network utility to retrieve files from the WWW

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	wget

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

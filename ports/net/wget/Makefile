#
# $Id: Makefile,v 1.10 1999/06/05 06:03:01 kunishi Exp $
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
	${MKDIR} ${WRK_BASEDIR}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${WRK_BASEDIR}/share/examples/wget/sample.wgetrc

.include <port.mk>

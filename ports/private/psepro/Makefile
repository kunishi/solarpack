#
# $Id: Makefile,v 1.1 1999/10/28 04:24:58 kunishi Exp $
#

PKG=	OBJDpsepr
NAME=	ObjectStore PSE Pro
VERSION=	6.0
VENDOR=	ObjectDesing Inc., http://www.objectdesign.com/

DISTNAME=	proinst.class
PKGNAME=	psepro-${VERSION}
MASTER_SITES=	/export/pub/java/psepro60/GenJava.v6/
DISTFILES=	${DISTNAME}

NO_FETCH=	yes
NO_EXTRACT=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}

pre-fetch:
	@${ECHO_MSG} "copy the ${DISTFILES} into ${DISTDIR} by hand."

do-install:
	@${ECHO_MSG} "make sure installing directories will be ${INSTPREFIX}/psepro."
	@cd ${DISTDIR} && java proinst

.include <port.mk>

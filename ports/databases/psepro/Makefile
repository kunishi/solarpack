#
# $Id: Makefile,v 1.2 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	psepro
VERSION=	6.0
PORTREV=	1

PKG=	OBJDpsepr
NAME=	ObjectStore PSE Pro

VENDOR=	ObjectDesing Inc., http://www.objectdesign.com/
DISTNAME=	proinst.class
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

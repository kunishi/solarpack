#
# $Id: Makefile,v 1.4 2000/07/14 11:51:52 kunishi Exp $
#

PORTNAME=	psepro
VERSION=	6.0
PORTREV=	1

PKG=	OBJDpsepr
NAME=	ObjectStore PSE Pro

VENDOR=	ObjectDesing Inc., http://www.objectdesign.com/
DISTNAME=	proinst.class
MASTER_SITES=	file:///share/pub/java/psepro60/GenJava.v6/
DISTFILES=	${DISTNAME}

IS_INTERACTIVE=	yes
NO_FETCH=	yes
NO_EXTRACT=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}

pre-fetch:
	@${ECHO_MSG} "copy the ${DISTFILES} into ${DISTDIR} by hand."

do-install:
	@${ECHO_MSG} "make sure installing directories will be ${INSTPREFIX}/psepro."
	@cd ${DISTDIR} && java proinst

post-install:
	${CHMOD} 755 ${INSTPREFIX}/psepro
.include <port.mk>

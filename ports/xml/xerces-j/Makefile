#
# $Id: Makefile,v 1.1 2001/11/16 09:25:17 kunishi Exp $
#

PORTNAME=	xerces-j
VERSION=	1.4.4
PORTREV=	2

PKG=		OPUCxercj
NAME=		Xerces-J, Apache Project XML Parser for Java

MASTER_SITES=	http://xml.apache.org/dist/${PORTNAME}/
DISTNAME=	Xerces-J-bin.${VERSION}

WRKSRC=		${WRKDIR}/xerces-${VERSION:S/./_/g}
NO_BUILD=	yes

SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/${PORTNAME}
SYSTEM_DOC_DIR=	${INSTPREFIX}/share/doc/${PORTNAME}
JAR_FILES=	xerces.jar xercesSamples.jar
DOC_FILES=	LICENSE Readme.html data docs samples

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${SYSTEM_DOC_DIR}
	cd ${WRKSRC}; \
	  ${TAR} cf - ${DOC_FILES} | (cd ${SYSTEM_DOC_DIR}; ${TAR} xf -)

.include <port.mk>

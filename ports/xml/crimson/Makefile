#
# $Id: Makefile,v 1.1 2001/11/16 09:25:15 kunishi Exp $
#

PORTNAME=	crimson
VERSION=	1.1.3
PORTREV=	1

PKG=		OPUCcrims
NAME=		Another XML Parser in Apache Project, originated from Sun

MASTER_SITES=	http://xml.apache.org/dist/${PORTNAME}/
DISTNAME=	${PORTNAME}-${VERSION}-bin

WRKSRC=		${WRKDIR}/${PORTNAME}-${VERSION}
NO_BUILD=	yes

SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/${PORTNAME}
SYSTEM_DOC_DIR=	${INSTPREFIX}/share/doc/${PORTNAME}
JAR_FILES=	crimson.jar
DOC_FILES=	ChangeLog README.html docs examples

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${SYSTEM_DOC_DIR}
	(cd ${WRKSRC}; ${TAR} cf - ${DOC_FILES}) | \
	   (cd ${SYSTEM_DOC_DIR}; ${TAR} xf -)

.include <port.mk>

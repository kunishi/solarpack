#
# $Id: Makefile,v 1.5 2001/11/14 06:02:07 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xt
VERSION=	19991105
PORTREV=	2

PKG=		OPUCxt
NAME=		XSL Transformation tool for Java

VENDOR=		James Clark, http://www.jclark.com/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.zip
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/

NO_BUILD=	yes
WRKSRC=		${WRKDIR}
USE_ZIP=	yes

SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/classes/${PORTNAME}
SYSTEM_DOC_DIR=	${INSTPREFIX}/share/doc/${PORTNAME}
JAR_FILES=	xt.jar sax.jar
DOC_FILES=	copying.txt xt.htm com demo

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${SYSTEM_DOC_DIR}
	cd ${WRKSRC}; \
	  ${TAR} cf - ${DOC_FILES} | (cd ${SYSTEM_DOC_DIR}; ${TAR} xfBp -)

.include <port.mk>

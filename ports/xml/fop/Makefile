#
# $Id: Makefile,v 1.1 2001/11/16 09:25:15 kunishi Exp $
#

PORTNAME=	fop
VERSION=	0.20.1
PORTREV=	1

PKG=		OPUCfop
NAME=		Fop, Apache XML Project XSL-FO Processor

MASTER_SITES=	http://xml.apache.org/dist/${PORTNAME}/
DISTNAME=	Fop-${VERSION}-bin

WRKSRC=		${WRKDIR}/Fop-${VERSION}
NO_BUILD=	yes

SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/${PORTNAME}
SYSTEM_DOC_DIR=	${INSTPREFIX}/share/doc/${PORTNAME}
JAR_FILES=	build/fop.jar
DOC_FILES=	CHANGES LICENSE README STATUS conf docs hyph

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${SYSTEM_DOC_DIR}
	cd ${WRKSRC}; \
	  ${TAR} cf - ${DOC_FILES} | (cd ${SYSTEM_DOC_DIR}; ${TAR} xf -)

.include <port.mk>

#
# $Id: Makefile,v 1.1 2001/11/16 09:25:16 kunishi Exp $
#

PORTNAME=	xalan-j
VERSION=	2.1.0
PORTREV=	1

PKG=		OPUCxalaj
NAME=		Xalan-J, the Apache Project XSLT Processor for Java

MASTER_SITES=	http://xml.apache.org/dist/${PORTNAME}/
DISTNAME=	${PORTNAME}_${VERSION:S/./_/g}

NO_BUILD=	yes

DOC_DIR=	share/doc/${PORTNAME}
INSTALL_DOC_DIR=	${INSTPREFIX}/${DOC_DIR}
SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/${PORTNAME}
JAR_FILES=	bin/BCEL.jar \
		bin/JLex.jar \
		bin/ant.jar \
		bin/bsf.jar \
		bin/java_cup.jar \
		bin/runtime.jar \
		bin/stylebook-1.0-b3_xalan-2.jar \
		bin/xalan.jar \
		bin/xalan2jdoc.jar \
		bin/xalanj1compat.jar \
		bin/xalansamples.jar \
		bin/xalanservlet.jar \
		bin/xerces.jar \
		bin/xml.jar \
		bin/xsltc.jar
DOC_FILES=	License commits.xml docs readme.html \
		todo.xml todo.xsl xdocs xsltc_todo.xml
SUITCASE_FILES=	samples
DOC_JAR_FILE=	${PORTNAME}-samples.jar
CLASS_SUITCASE=	${DOC_DIR}/${DOC_JAR_FILE}

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${INSTALL_DOC_DIR}
	cd ${WRKSRC}; \
	  ${JAR} -cMf ${INSTALL_DOC_DIR}/${DOC_JAR_FILE} ${SUITCASE_FILES}
	cd ${WRKSRC}; \
	  ${TAR} cf - ${DOC_FILES} | (cd ${INSTALL_DOC_DIR}; ${TAR} xf -)

.include <port.mk>

#
# $Id: Makefile,v 1.1 2001/11/16 09:25:14 kunishi Exp $
#

PORTNAME=	batik
VERSION=	1.0
PORTREV=	1

PKG=		OPUCbatik
NAME=		Batik, Apache XML Project SVG Processor

MASTER_SITES=	http://xml.apache.org/dist/batik/
DOC_DISTFILE=	${PORTNAME}-docs-${VERSION}${EXTRACT_SUFX}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${DOC_DISTFILE}

USE_ZIP=	yes
NO_BUILD=	yes

SYSTEM_JAR_DIR=	${INSTPREFIX}/share/java/${PORTNAME}
SYSTEM_DOC_DIR=	${INSTPREFIX}/share/doc/${PORTNAME}
JAR_FILES=	batik-rasterizer.jar batik-svgbrowser.jar batik-svgpp.jar \
		batik-ttf2svg.jar batik.jar
AUX_JAR_FILES=	lib/batik-awt-util.jar lib/batik-bridge.jar \
		lib/batik-css.jar lib/batik-dom.jar lib/batik-ext.jar \
		lib/batik-extension.jar lib/batik-gui-util.jar \
		lib/batik-gvt.jar lib/batik-parser.jar lib/batik-script.jar \
		lib/batik-svg-dom.jar lib/batik-svggen.jar \
		lib/batik-transcoder.jar lib/batik-util.jar lib/batik-xml.jar \
		lib/crimson-parser.jar lib/js.jar
DOC_FILES=	LICENSE LICENSE.rhino README docs samples

post-extract:
	find ${WRKDIR} -type d -exec ${CHMOD} 755 '{}' ';'
	${MV} ${WRKDIR}/docs/* ${WRKSRC}/docs/

do-install:
	${MKDIR} ${SYSTEM_JAR_DIR}
	cd ${WRKSRC}; ${INSTALL_DATA} ${JAR_FILES} ${SYSTEM_JAR_DIR}
	${MKDIR} ${SYSTEM_JAR_DIR}/lib
	cd ${WRKSRC}; ${INSTALL_DATA} ${AUX_JAR_FILES} ${SYSTEM_JAR_DIR}/lib
	${MKDIR} ${SYSTEM_DOC_DIR}
	(cd ${WRKSRC}; ${TAR} cf - ${DOC_FILES}) | \
		(cd ${SYSTEM_DOC_DIR}; ${TAR} xf -)

.include <port.mk>

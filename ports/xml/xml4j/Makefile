#
# $Id: Makefile,v 1.5 2000/09/27 01:28:01 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xml4j
VERSION=	3.0.1
PORTREV=	2

PKG=		IBMxml4j
NAME=		IBM XML Parser for Java

VENDOR=		IBM Corporation, http://www.alphaworks.ibm.com/
DISTNAME=	XML4J_3_0_1
MASTER_SITES=	http://www.alphaworks.ibm.com/tech/xml4j/
DISTFILES=	XML4J-bin.${VERSION}${EXTRACT_SUFX}

NO_FETCH=	Fetch ${DISTFILES} manually from ${MASTER_SITES}.
NO_BUILD=	yes

INSTFILES=	Readme.html data

do-install:
	${MKDIR} ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xml4j.jar ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xerces.jar ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xercesSamples.jar ${INSTPREFIX}/share/java/classes
	${MKDIR} ${INSTPREFIX}/share/java/xml4j
	(cd ${WRKSRC}; ${TAR} cf - ${INSTFILES} | \
	  (cd ${INSTPREFIX}/share/java/xml4j; ${TAR} xfBp -))
	${MKDIR} ${INSTPREFIX}/share/java/xml4j/docs
	(cd ${WRKSRC}/docs/docs/html; ${TAR} cf - * | \
	  (cd ${INSTPREFIX}/share/java/xml4j/docs; ${TAR} xfBp -))
	(cd ${WRKSRC}/docs; ${TAR} cf - apiDocs | \
	  (cd ${INSTPREFIX}/share/java/xml4j; ${TAR} xfBp -))
	${MKDIR} ${INSTPREFIX}/share/java/xml4j/docs-src
	(cd ${WRKSRC}/docs/docs; ${TAR} cf - * | \
	  (cd ${INSTPREFIX}/share/java/xml4j/docs-src; ${TAR} xfBp -))

post-install:
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}

.include <port.mk>

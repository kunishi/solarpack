#
# $Id: Makefile,v 1.2 2000/05/17 06:42:49 kunishi Exp $
#

PORTNAME=	xml4j
VERSION=	2.0.14
PORTREV=	1

PKG=		IBMxml4j
NAME=		IBM XML Parser for Java

VENDOR=		IBM Corporation, http://www.alphaworks.ibm.com/
DISTNAME=	${PORTNAME}_2_0_14
MASTER_SITES=	http://www.alphaworks.ibm.com/tech/xml4j/

NO_FETCH=	Fetch ${DISTFILES} manually from ${MASTER_SITES}.
NO_BUILD=	yes

INSTFILES=	Readme.html license.html w3c_copyright_software.html
INSTFILES+=	TXapiDocs apiDocs build data docs samples src

do-install:
	${MKDIR} ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xml4j.jar ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xml4jSamples.jar ${INSTPREFIX}/share/java/classes
	${MKDIR} ${INSTPREFIX}/share/java/xml4j
	(cd ${WRKSRC}; ${TAR} cf - ${INSTFILES} | \
	  (cd ${INSTPREFIX}/share/java/xml4j; ${TAR} xfBp -))

post-install:
	find ${INSTPREFIX}/share/java/xml4j -type f \
	  -exec chmod ${SHAREMODE} '{}' ';'
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}

.include <port.mk>

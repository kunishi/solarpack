#
# $Id: Makefile,v 1.4 2000/09/27 01:27:56 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xml4j
VERSION=	2.0.13
PORTREV=	1

PKG=		IBMxml4j
NAME=		IBM XML Parser for Java

VENDOR=		IBM Corporation, http://www.alphaworks.ibm.com/
DISTNAME=	${PORTNAME}_2_0_13
MASTER_SITES=	http://www.alphaworks.ibm.com/tech/xml4j/

NO_FETCH=	Fetch ${DISTFILES} manually from ${MASTER_SITES}.
NO_BUILD=	yes

INSTFILES=	readme.html license.html w3c_copyright_software.html
INSTFILES+=	txapidocs apidocs build data docs samples src

do-install:
	${MKDIR} ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xml4j.jar ${INSTPREFIX}/share/java/classes/${DISTNAME}.jar
	${INSTALL_DATA} ${WRKSRC}/xml4jsamples.jar ${INSTPREFIX}/share/java/classes/xml4jSamples_2_0_13.jar
	${MKDIR} ${INSTPREFIX}/share/java/xml4j
	(cd ${WRKSRC}; ${TAR} cf - ${INSTFILES} | \
	  (cd ${INSTPREFIX}/share/java/xml4j; ${TAR} xfBp -))

post-install:
	find ${INSTPREFIX}/share/java/xml4j -type f \
	  -exec chmod ${SHAREMODE} '{}' ';'
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}

.include <port.mk>

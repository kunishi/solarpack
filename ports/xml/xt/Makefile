#
# $Id: Makefile,v 1.2 2000/05/17 06:42:49 kunishi Exp $
#

PORTNAME=	xt
VERSION=	19990822
PORTREV=	1

PKG=		JCLxt
NAME=		XSL Transformation tool for Java

VENDOR=		James Clark, http://www.jclark.com/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.zip
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/

NO_BUILD=	yes
WRKSRC=		${WRKDIR}

INSTFILES=	copying.txt xt.htm com demo

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@cd ${WRKDIR} && unzip ${DISTDIR}/${DISTFILES}

do-install:
	${MKDIR} ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/xt.jar ${INSTPREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKSRC}/sax.jar ${INSTPREFIX}/share/java/classes
	${MKDIR} ${INSTPREFIX}/share/java/xt
	cd ${WRKSRC}; ${TAR} cf - ${INSTFILES} | \
	  (cd ${INSTPREFIX}/share/java/xt; ${TAR} xfBp -)

post-install:
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/java/xt

.include <port.mk>

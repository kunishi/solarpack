#
# $Id: Makefile,v 1.1 1999/08/25 09:50:32 kunishi Exp $
#

PKG=		JCLxt
NAME=		XSL Transformation tool for Java
VERSION=	19990822
VENDOR=		James Clark, http://www.jclark.com/

DISTNAME=	xt
PKGNAME=	xt-19990822
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

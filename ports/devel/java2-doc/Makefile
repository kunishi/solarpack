#
# $Id: Makefile,v 1.1 2000/07/07 09:45:51 kunishi Exp $
#

PORTNAME=	java2-doc
VERSION=	1.2.2
PORTREV=	1

PKG=		SUNjav2dc
NAME=		Java2 Documentation

MASTER_SITES=	#
DISTFILES=	jdk1_2_2-001-doc${EXTRACT_SUFX}
EXTRACT_SUFX=	.zip

NO_FETCH=	"Download ${DISTFILES} manually from http://java.sun.com."
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/jdk1.2.2
PREFIX=		/usr/java1.2

do-extract:
	@${MKDIR} ${WRKDIR}
	cd ${WRKDIR} && ${UNZIP} ${DISTDIR}/${DISTFILES}

do-install:
	${MKDIR} ${INSTPREFIX}
	(cd ${WRKSRC}; ${TAR} cf - docs) | (cd ${INSTPREFIX}; ${TAR} xfBp -)

.include <port.mk>

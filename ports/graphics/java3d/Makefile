#
# $Id: Makefile,v 1.1 2000/06/08 04:23:26 kunishi Exp $
#

PORTNAME=	java3d
VERSION=	1.2
PORTREV=	1

PKG=		SUNWjv3d
NAME=		Java3D(TM)
VENDOR=		Sun Microsystems, Inc. <http://java.sun.com/java-media/3D/index.html
ONLY_FOR_ARCHS=	sparc

MASTER_SITES=	${MASTER_SITES_LOCAL}
DISTFILES=	java3d-1_2-solsparc.bin java3d-1_2-doc.tar.Z
EXTRACT_ONLY=	#
WRKSRC=		${WRKDIR}
NO_BUILD=	yes

PREFIX=		/usr/java1.2

do-extract:
	${RM} -rf ${WRKSRC}
	${MKDIR} ${WRKSRC}
	${CP} ${DISTDIR}/java3d-1_2-solsparc.bin ${WRKSRC}

do-install:
	${MKDIR} ${INSTPREFIX}
	cd ${INSTPREFIX}; ${ECHO} yes | ${SH} ${WRKSRC}/java3d-1_2-solsparc.bin
	${EXTRACT_CMD} ${DISTDIR}/java3d-1_2-doc.tar.Z | \
	  ${TAR} -C ${INSTPREFIX} -xf -

.include <port.mk>

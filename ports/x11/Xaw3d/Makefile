#
# $Id: Makefile,v 1.2 1999/06/06 06:52:14 kunishi Exp $
#

PKG=		OPENxaw3d
NAME=		Three-D Athena Widgets
VERSION=	1.5
VENDOR=		Kaleb S. Keithley <kaleb@opengroup.org>

DISTNAME=	Xaw3d-1.5
MASTER_SITES=	ftp://ftp.x.org/contrib/widgets/Xaw3d/R6.3/

WRKSRC=		${WRKDIR}/xc/lib/Xaw3d
USE_IMAKE=	yes

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/Xaw3d
	${INSTALL} -c -m 644 -o root -g bin \
	  ${WRKSRC}/README.XAW3D ${WRK_BASEDIR}/share/doc/Xaw3d

.include <port.mk>

#
# $Id: Makefile,v 1.3 1999/06/09 02:35:58 kunishi Exp $
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
	${MKDIR} ${INSTPREFIX}/share/doc/Xaw3d
	${INSTALL} -c -m 644 -o root -g bin \
	  ${WRKSRC}/README.XAW3D ${INSTPREFIX}/share/doc/Xaw3d

.include <port.mk>

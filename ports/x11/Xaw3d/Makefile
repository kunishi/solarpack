#
# $Id: Makefile,v 1.4 2000/05/17 06:42:48 kunishi Exp $
#

PORTNAME=	Xaw3d
VERSION=	1.5
PORTREV=	1

PKG=		OPENxaw3d
NAME=		Three-D Athena Widgets

VENDOR=		Kaleb S. Keithley <kaleb@opengroup.org>
MASTER_SITES=	ftp://ftp.x.org/contrib/widgets/Xaw3d/R6.3/

WRKSRC=		${WRKDIR}/xc/lib/${PORTNAME}
USE_IMAKE=	yes

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL} -c -m 644 -o root -g bin \
	  ${WRKSRC}/README.XAW3D ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>

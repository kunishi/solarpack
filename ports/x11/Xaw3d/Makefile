#
# $Id: Makefile,v 1.1 1999/05/19 09:40:27 kunishi Exp $
#

DISTNAME=	Xaw3d-1.5
MASTER_SITES=	ftp://ftp.x.org/contrib/widgets/Xaw3d/R6.3/

WRKSRC=		${WRKDIR}/xc/lib/Xaw3d
USE_IMAKE=	yes

#post-extract:
#	${MKDIR} ${WRKSRC}/X11/Xaw3d
#	cd ${WRKSRC}/X11/Xaw3d; ${LN} -fs ../../*.h .

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/Xaw3d
	${INSTALL} -c -m 644 -o root -g bin \
	  ${WRKSRC}/README.XAW3D ${WRK_BASEDIR}/share/doc/Xaw3d

.include <port.mk>

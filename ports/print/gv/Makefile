#
# $Id: Makefile,v 1.1 2000/05/18 12:34:57 kunishi Exp $
#

PORTNAME=	gv
VERSION=	3.5.8
PORTREV=	1

PKG=		OPENgv
NAME=		gv, an X11 ghostscript frontend.
VENDOR=	Johannes Plass <plass@thep.physik.uni-mainz.de>, <http://wwwthep.physik.uni-mainz.de/~plass/gv/>
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

LIB_DEPENDS=	OPENxaw3d:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	GNUgsvf:${PORTSDIR}/print/gs

USE_IMAKE=	yes

post-install:
	cd ${WRKSRC}; ${MAKE_INSTALL_ENV} ${CCSMAKE} ${MAKE_INSTALL_ARGS} install.doc

.include <port.mk>

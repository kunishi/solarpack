#
# $Id: Makefile,v 1.4 2001/11/16 14:15:29 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gv
VERSION=	3.5.8
PORTREV=	3

PKG=		OPUCgv
NAME=		gv, an X11 ghostscript frontend.
VENDOR=	Johannes Plass <plass@thep.physik.uni-mainz.de>, <http://wwwthep.physik.uni-mainz.de/~plass/gv/>
MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/gv/unix/

LIB_DEPENDS=	OPENxaw3d:${PORTSDIR}/x11/Xaw3d
RUN_DEPENDS=	OPUCcjkgs:${PORTSDIR}/print/cjk-ghostscript

USE_IMAKE=	yes

post-install:
	cd ${WRKSRC}; ${MAKE_INSTALL_ENV} ${CCSMAKE} ${MAKE_INSTALL_ARGS} install.doc

.include <port.mk>

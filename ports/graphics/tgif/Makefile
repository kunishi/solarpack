#
# $Id: Makefile,v 1.2 2000/07/01 11:31:50 kunishi Exp $
#

PORTNAME=	ja-tgif
VERSION=	3.0.18+j12
PORTREV=	2

PKG=		OPENtgifj
NAME=		tgif, an Xlib base 2-D drawing facility under X11, with JP extension.
VENDOR=		William Chia-Wei Cheng <william@cs.ucla.edu>

MASTER_SITES=	ftp://bourbon.cs.umd.edu/pub/tgif/tgif-3.x/
DISTFILES=	tgif-3.0.18.tar.gz
PATCH_SITES=	ftp://ftp.hipecs.hokudai.ac.jp/pub/X11/contrib/applications/tgif/jp/ \
		ftp://ftp.nisiq.net/pub/FreeBSD/ports/distfiles/ \
		ftp://ports.jp.freebsd.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
		ftp://ftp4.jp.freebsd.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/
PATCHFILES=	tgif-3.0J0.12-p18-patch.gz \
		tgif-3.0J0.12-p18-PSJISr1.gz

RUN_DEPENDS=	OPENntpbm:${PORTSDIR}/graphics/netpbm/

WRKSRC=		${WRKDIR}/tgif-3.0.18
PATCH_DIST_STRIP=-p1
USE_IMAKE=	yes

.include <port.mk>

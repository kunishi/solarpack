#
# $Id: Makefile,v 1.3 2000/09/27 01:27:40 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	binutils
VERSION=	2.9.1
PORTREV=	1

PKG=	GNUbinut
NAME=	GNU binutils
VENDOR=	${VENDOR_GNU}

MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/binutils/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/binutils/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

PROTOTYPE_IN=	${PKGDIR}/prototype.in.${ARCH}

pre-install:
	${MKDIR} ${INSTPREFIX}/include
.if (${ARCH} == "sparc")
	${MKDIR} ${INSTPREFIX}/${GNU_HOSTTYPE}/lib/ldscripts
.endif

.include <port.mk>

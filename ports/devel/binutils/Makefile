#
# $Id: Makefile,v 1.4 2000/09/28 02:45:03 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	binutils
VERSION=	2.9.1
PORTREV=	2

PKG=	GNUbinut
NAME=	GNU binutils
VENDOR=	${VENDOR_GNU}

MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/binutils/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/binutils/

RUN_DEPENDS=	GNUcc:${PORTSDIR}/devel/gcc

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

PROTOTYPE_IN=	${PKGDIR}/prototype.in.${ARCH}

pre-install:
	${MKDIR} ${INSTPREFIX}/include
.if (${ARCH} == "sparc")
	${MKDIR} ${INSTPREFIX}/${GNU_HOSTTYPE}/lib/ldscripts
.endif

# ${LOCALBASE}/lib/libiberty.a is duplicated with gcc package.
post-install:
	${RM} ${INSTPREFIX}/lib/libiberty.a

.include <port.mk>

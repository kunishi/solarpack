#
# $Id: Makefile,v 1.5 2001/04/14 04:15:14 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	binutils
VERSION=	2.11
PORTREV=	1

PKG=	GNUbinut
NAME=	GNU binutils
VENDOR=	${VENDOR_GNU}

MASTER_SITES=	ftp://ftp.freesoftware.com/pub/sourceware/binutils/releases/ \
		ftp://sourceware.cygnus.com/pub/binutils/releases/

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
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

#
# $Id: Makefile,v 1.5 2001/04/14 04:15:14 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	binutils
VERSION=	2.13.1
PORTREV=	1

PKG=	OPUCbinut
NAME=	GNU binutils
VENDOR=	${VENDOR_GNU}

MASTER_SITES=	http://ftp.gnu.org/gnu/binutils/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g --with-included-gettext

pre-install:
	${MKDIR} ${INSTPREFIX}/include
.if (${ARCH} == "sparc")
	${MKDIR} ${INSTPREFIX}/${GNU_HOSTTYPE}/lib/ldscripts
.endif

# ${LOCALBASE}/lib/libiberty.a is duplicated with gcc package.
post-install:
	${RM} ${INSTPREFIX}/lib/libiberty.a

.include <port.mk>

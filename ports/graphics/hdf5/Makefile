#
# $Id: Makefile,v 1.1 2001/11/12 12:29:55 kunishi Exp $
#

PORTNAME=	hdf5
VERSION=	1.4.2.1
PORTREV=	1

PKG=		OPUChdf5
NAME=		Hierarchical Data Format Library 5

MASTER_SITES=	ftp://ftp.ncsa.uiuc.edu/HDF/HDF5/current/src/
DISTNAME=	${PORTNAME}-1.4.2-patch1

LIB_DEPENDS=	OPUCopssl:${PORTSDIR}/security/openssl

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	ARCH=""
CONFIGURE_ARGS+=	--with-ssl=${LOCALBASE}/ssl
USE_GMAKE=	yes
USE_ZLIB=	yes

.include <port.mk>

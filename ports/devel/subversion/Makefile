#
# $Id$
#

.include <port.pre.mk>

PORTNAME=	subversion
VERSION=	0.27.0
PORTREV=	1

PKG=		OPUCsvn
NAME=		Subversion
MAINTAINER=	kunishi@c.oka-pu.ac.jp

MASTER_SITES=	http://www.sleepycat.com/update/snapshot/ \
		http://subversion.tigris.org/files/documents/15/5642/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} db-4.0.14.tar.gz

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--disable-shared

post-extract:
	${MV} ${WRKDIR}/db-4.0.14 ${WRKSRC}/db

pre-configure:
	(cd ${WRKSRC} && ${SH} ./autogen.sh)

.include <port.mk>

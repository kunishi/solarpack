#
# $Id: Makefile,v 1.1 2000/01/06 12:02:02 kunishi Exp $
#

PKG=		BERKdbtw
NAME=		Berkeley Database, version 2
VERSION=	2.7.7
VENDOR=		Sleepycat Software, http://www.sleepycat.com/

DISTNAME=	db-${VERSION}
MASTER_SITES=	http://www.sleepycat.com/update/2.7.7/

WRKSRC=		${WRKDIR}/${DISTNAME}/build_unix

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--enable-compat185

.include <port.mk>

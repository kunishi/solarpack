#
# $Id: Makefile,v 1.2 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	db
VERSION=	2.7.7
PORTREV=	1

PKG=		BERKdbtw
NAME=		Berkeley Database, version 2

VENDOR=		Sleepycat Software, http://www.sleepycat.com/
MASTER_SITES=	http://www.sleepycat.com/update/2.7.7/

WRKSRC=		${WRKDIR}/${DISTNAME}/build_unix

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--enable-compat185

.include <port.mk>

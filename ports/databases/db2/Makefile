#
# $Id: Makefile,v 1.3 2000/09/27 01:27:39 kunishi Exp $
#

.include <port.pre.mk>

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

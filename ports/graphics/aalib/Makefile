#
# $Id: Makefile,v 1.4 2002/03/18 09:15:12 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	aalib
VERSION=	1.4.r5
PORTREV=	1

PKG=		OPUCaalib
NAME=		An ascii art library
VENDOR=		Jan Hubicka (hubicka@paru.cas.cz) et al.

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	aa-project
DISTNAME=	${PORTNAME}-${VERSION:S/.r/rc/}

WRKSRC=		${WRKDIR}/${PORTNAME}-1.4.0
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/aalib.info

.include <port.mk>

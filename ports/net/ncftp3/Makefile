#
# $Id: Makefile,v 1.8 2001/11/28 11:46:36 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ncftp
VERSION=	3.0.4
PORTREV=	1

PKG=		OPUCncftp
NAME=		NcFTP, a free set of programs that use FTP.
VENDOR=		NcFTP Software <http://www.NcFTP.com/>

DISTNAME=	${PORTNAME}-${VERSION}-src
MASTER_SITES=	ftp://ftp.ncftp.com/ncftp/
WRKSRC=		${WRKDIR}/${PORTNAME}-${VERSION}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	mandir=${INSTPREFIX}/man

.include <port.mk>

#
# $Id: Makefile,v 1.2 1999/06/06 06:37:01 kunishi Exp $
#

PKG=		OPENdvsel
NAME=		dviselect, dvi selecting utility
VERSION=	1.3
VENDOR=		Univ. Maryland Department of Comp. Sci.

DISTNAME=	dviselect
PKGNAME=	dviselect-${VERSION}
MASTER_SITES=	ftp://ftp.ee.duke.edu/archives/

USE_GMAKE=	yes

pre-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/man/man1

.include <port.mk>

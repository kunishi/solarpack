#
# $Id: Makefile,v 1.3 1999/06/09 02:34:24 kunishi Exp $
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
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>

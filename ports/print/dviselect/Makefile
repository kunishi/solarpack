#
# $Id: Makefile,v 1.7 2000/09/27 01:27:54 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	dviselect
VERSION=	1.3
PORTREV=	1

PKG=		OPENdvsel
NAME=		dviselect, dvi selecting utility

VENDOR=		Univ. Maryland Department of Comp. Sci.
DISTNAME=	${PORTNAME}
MASTER_SITES=	ftp://ftp.ee.duke.edu/archives/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/distfiles/

USE_GMAKE=	yes
ALL_TARGET=	default

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>

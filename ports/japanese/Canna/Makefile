#
# $Id: Makefile,v 1.2 1999/05/18 01:53:12 kunishi Exp $
#

DISTNAME =	Canna35b2
PKGNAME =	ja-Canna-3.5b2
MASTER_SITES =	ftp://ftp.nec.co.jp/pub/Canna/Canna35/

PATCH_SITES =	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES =	${DISTNAME}-unoff1.patch.gz \
		${DISTNAME}-unoff2.patch.gz \
		${DISTNAME}-hack1.patch.gz
PATCH_DIST_STRIP =	-p1

USE_IMAKE=	yes
PREFIX =	${LOCALBASE}

.include <port.mk>

#
# $Id: Makefile,v 1.3 1999/06/03 11:40:08 kunishi Exp $
#

DISTNAME =	Canna35b2
PKGNAME =	ja-Canna-3.5b2
MASTER_SITES =	ftp://ftp.nec.co.jp/pub/Canna/Canna35/ \
		ftp://ring.nacsis.ac.jp/pub/text/xemacs/aux/

PATCH_SITES =	http://www.jaist.ac.jp/~fujieda/canna/
PATCHFILES =	${DISTNAME}-unoff1.patch.gz \
		${DISTNAME}-unoff2.patch.gz \
		${DISTNAME}-hack1.patch.gz
PATCH_DIST_STRIP =	-p1

USE_IMAKE=	yes
PREFIX =	${LOCALBASE}

.include <port.mk>

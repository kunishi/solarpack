#
# $Id: Makefile,v 1.4 1999/06/05 07:59:19 kunishi Exp $
#

PKG=		OPENcanna
NAME=		Canna, a Japanese input system
VERSION=	3.5b2
VENDOR=		NEC Corporation, Inc. <http://www.nec.co.jp/japanese/product/computer/soft/canna/>.

DISTNAME =	Canna35b2
PKGNAME =	ja-Canna-${VERSION}
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

#
# $Id: Makefile,v 1.5 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	ja-Canna
VERSION=	3.5b2
PORTREV=	1

PKG=		OPENcanna
NAME=		Canna, a Japanese input system

VENDOR=		NEC Corporation, Inc. <http://www.nec.co.jp/japanese/product/computer/soft/canna/>.
DISTNAME =	Canna35b2
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

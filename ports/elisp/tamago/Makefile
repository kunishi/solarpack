#
# $Id: Makefile,v 1.1 2001/11/30 12:42:43 kunishi Exp $
#

PORTNAME=	tamago
VERSION=	4.0.6.2000.06.16
PORTREV=	1

PKG=		OPUCtamag
NAME=		The Multilingual Input Method for Emacs

MASTER_SITES=	ftp://ftp.m17n.org/pub/tamago/ \
		ftp://ftp.kddlabs.co.jp/Japan/m17n.org/tamago/ \
		http://alpha.c.oka-pu.ac.jp/~kunishi/tmp/
DISTNAME=	${PORTNAME}-4.0.6
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		patch-20000605-20000616
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
PATCH_SITES=	ftp://ftp.kddlabs.co.jp/Japan/m17n.org/tamago/
PATCHFILES=	tamago-4.0.6-20000605.patch.gz
PATCH_DIST_STRIP=	-p1

BUILD_DEPENDS=	OPUCemacs:${PORTSDIR}/editors/emacs
RUN_DEPENDS=	OPUCemacs:${PORTSDIR}/editors/emacs

USE_EMACS=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

post-patch:
	cd ${WRKSRC}; \
	  ${PATCH} -p0 -N < ${DISTDIR}/patch-20000605-20000616

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}/egg

.include <port.mk>

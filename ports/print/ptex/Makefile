#
# $Id: Makefile,v 1.10 2002/12/27 04:51:57 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-ptex
VERSION=	3.0.5.20021225
PORTREV=	1

PKG=		OPUCptexe
NAME=		ASCII pTeX, EUC version

VENDOR=		ASCII Corporation, Inc., http://www.ascii.co.jp/pb/ptex/
DISTNAME=	ptex-src-3.0.5
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/tetex/ \
		${MASTER_SITE_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX-beta
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} teTeX-src-beta-20021225.tar.gz

BUILD_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib \
		OPUCmktmp:${PORTSDIR}/devel/mktemp
RUN_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib

WRKSRC=		${WRKDIR}/teTeX-src-beta-20021225
MAKE_INSTALL_EXEC_DIR=	${WRKSRC}/texk

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-multiplatform \
		--without-xdvik --without-dvipdfm --without-dvipsk
USE_GMAKE=	yes

ALL_TARGET=	default
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} \
			texmf=${INSTPREFIX}/share/texmf	

CLASS_INFO=	info/kpathsea.info info/web2c.info

post-extract:
	${MV} ${WRKDIR}/ptex-3.0.5 ${WRKSRC}/texk/web2c

post-build:
	cd ${WRKSRC}/texk/web2c/ptex-3.0.5; \
	  ./configure euc; \
	  ${ENV} ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/texk/web2c/ptex-3.0.5; \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	ln -s ptex ${INSTPREFIX}/bin/platex

.include <port.mk>

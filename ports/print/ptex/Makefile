#
# $Id: Makefile,v 1.12 2003/02/21 10:11:45 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-ptex
VERSION=	3.1.2.2.0
PORTREV=	1

PKG=		OPUCptexe
NAME=		ASCII pTeX, EUC version

VENDOR=		ASCII Corporation, Inc., http://www.ascii.co.jp/pb/ptex/
DISTNAME=	ptex-src-3.1.2
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/tetex/ \
		${MASTER_SITE_CTAN} \
		ftp://core.ring.gr.jp/pub/text/TeX/ptex-win32/utils/
MASTER_SITE_SUBDIR=	systems/unix/teTeX/2.0/distrib
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tetex-src-2.0.tar.gz \
		dvipsk-5.92b-p1.5g.tar.gz

BUILD_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib \
		OPUCmktmp:${PORTSDIR}/devel/mktemp
RUN_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib

WRKSRC=		${WRKDIR}/tetex-src-2.0
MAKE_INSTALL_EXEC_DIR=	${WRKSRC}/texk

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-multiplatform --without-xdvik
USE_GMAKE=	yes

ALL_TARGET=	default
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} \
			texmf=${INSTPREFIX}/share/texmf	

CLASS_INFO=	info/kpathsea.info info/web2c.info info/dvips.info \
		info/latex.info
EDITABLE_FILES=	share/texmf/dvips/config/config.ps \
		share/texmf/web2c/texmf.cnf

post-extract:
	${MV} ${WRKDIR}/ptex-3.1.2 ${WRKSRC}/texk/web2c/ptex

post-patch:
	${PATCH} -p0 -N -d ${WRKSRC}/texk < ${WRKDIR}/dvipsk-5.92b-p1.5g.diff

post-build:
	cd ${WRKSRC}/texk/web2c/ptex; \
	  ./configure euc; \
	  ${ENV} ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/texk/web2c/ptex; \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}

.include <port.mk>

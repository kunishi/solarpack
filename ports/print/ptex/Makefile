#
# $Id: Makefile,v 1.11 2002/12/27 12:27:16 kunishi Exp $
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
		${MASTER_SITE_CTAN} \
		http://project.ktug.or.kr/dvipdfmx/snapshot/
MASTER_SITE_SUBDIR=	systems/unix/teTeX-beta
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} teTeX-src-beta-20021225.tar.gz \
		dvipdfmx-20021128.tar.gz
PATCH_SITES=	ftp://core.ring.gr.jp/pub/text/TeX/ptex-win32/utils/
PATCHFILES=	dvipsk-5.92a-p1.5g.diff.gz

BUILD_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib \
		OPUCmktmp:${PORTSDIR}/devel/mktemp \
		OPUCopssl:${PORTSDIR}/security/openssl
RUN_DEPENDS=	OPUCptxlb:${PORTSDIR}/print/ptex-lib

WRKSRC=		${WRKDIR}/teTeX-src-beta-20021225
PATCH_DIST_APPLY_DIR=	${WRKSRC}/texk
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
		share/texmf/dvipdfm/config/dvipdfmx.cfg

post-extract:
	${MV} ${WRKDIR}/ptex-3.0.5 ${WRKSRC}/texk/web2c
	${MV} ${WRKDIR}/dvipdfmx-20021128 ${WRKSRC}/texk/dvipdfmx

post-build:
	cd ${WRKSRC}/texk/web2c/ptex-3.0.5; \
	  ./configure euc; \
	  ${ENV} ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}
	cd ${WRKSRC}/texk/dvipdfmx; \
	  ${ENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS} \
	    --with-openssl=${LOCALBASE}/ssl; \
	  ${ENV} ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/texk/web2c/ptex-3.0.5; \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	ln -s ptex ${INSTPREFIX}/bin/platex
	cd ${WRKSRC}/texk/dvipdfmx; \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}

.include <port.mk>

#
# $Id: Makefile,v 1.2 1999/06/06 06:44:00 kunishi Exp $
#

PKG=		GNUgsvf
NAME=		GNU Ghostscript, with vflib and jpdf support
VERSION=	5.10
VENDOR=		Aladdin Enterprises <http://www.cs.wisc.edu/~ghost/>

DISTNAME=	ghostscript-${VERSION}
MASTER_SITES=	ftp://ftp.cs.wisc.edu/ghost/gnu/gs510/ \
		http://www.ldl.jaist.ac.jp/~akr/nonresearch/free-software/ghostscript/ \
		http://www.rd.nacsis.ac.jp/~katayama/homepage/ghostscript/jpdf/ \
		http://itohws03.ee.noda.sut.ac.jp/~matsuda/VFlib-FT/ \
		http://www.ozemail.com.au/~geoffk/pdfencrypt/
DISTFILES=	ghostscript-5.10.tar.gz
DISTFILES+=	ghostscript-fonts-std-5.10.tar.gz
DISTFILES+=	ghostscript-fonts-other-5.10.tar.gz
DISTFILES+=	ghostscript-5.10jpeg.tar.gz
DISTFILES+=	ghostscript-5.10libpng.tar.gz
DISTFILES+=	ghostscript-5.10zlib.tar.gz
DISTFILES+=	gs5.10-vflib-1.2.tar.gz
DISTFILES+=	gs5.10-jpdf-0.2.tar.gz
DISTFILES+=	gs5.10-VFlibBM-PL2.diff.gz
DISTFILES+=	pdf_sec.ps
EXTRACT_ONLY=	ghostscript-5.10.tar.gz
EXTRACT_ONLY+=	ghostscript-5.10jpeg.tar.gz
EXTRACT_ONLY+=	ghostscript-5.10libpng.tar.gz
EXTRACT_ONLY+=	ghostscript-5.10zlib.tar.gz

WRKSRC=		${WRKDIR}/gs5.10
MAKEFILE=	unix-gcc.mak
MAKE_ARGS+=	prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${WRK_BASEDIR} INSTALL="${INSTALL} -c"

post-extract:
	cd ${WRKSRC}; find . -type f -exec chmod 644 '{}' ';'

pre-patch:
	cd ${WRKSRC}; ${MV} ../jpeg-6a jpeg-6a
	cd ${WRKSRC}; ${MV} ../libpng-0.96 libpng
	cd ${WRKSRC}; ${MV} ../zlib-1.1.3 zlib
	@cd ${WRKSRC}; ${GTAR} xzf ${DISTDIR}/gs5.10-vflib-1.2.tar.gz
	@cd ${WRKSRC}; ${GTAR} xzf ${DISTDIR}/gs5.10-jpdf-0.2.tar.gz
	@cd ${WRKDIR}; \
	  ${PATCH} -p0 < ${WRKSRC}/gs5.10-vflib-1.2/gs5.10-vflib-1.2.diff
	@cd ${WRKDIR}; \
	  ${PATCH} -p0 < ${WRKSRC}/gs5.10-jpdf-0.2/gs5.10-jpdf-0.2.diff
	@cd ${WRKDIR}; \
	  ${GZCAT} ${DISTDIR}/gs5.10-VFlibBM-PL2.diff.gz | ${PATCH} -p0

pre-install:
	${MKDIR} ${WRK_BASEDIR}/share/ghostscript/fonts
	${GTAR} -C ${WRK_BASEDIR}/share/ghostscript/fonts -xzf \
	  ${DISTDIR}/ghostscript-fonts-std-5.10.tar.gz
	${GTAR} -C ${WRK_BASEDIR}/share/ghostscript/fonts -xzf \
	  ${DISTDIR}/ghostscript-fonts-other-5.10.tar.gz
	${CHOWN} -R root:bin ${WRK_BASEDIR}/share/ghostscript/fonts

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs5.10-vflib-1.2/README ${WRK_BASEDIR}/share/doc/ghostscript/README.gs5.10-vflib
	${INSTALL_DATA} ${WRKSRC}/gs5.10-vflib-1.2/README.CID ${WRK_BASEDIR}/share/doc/ghostscript/README.CID.gs5.10-vflib
	${INSTALL_DATA} ${WRKSRC}/gs5.10-vflib-1.2/OLD-DOC/gs261d13-doc/* ${WRK_BASEDIR}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs5.10-vflib-1.2/OLD-DOC/gs261j10-doc/* ${WRK_BASEDIR}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs5.10-jpdf-0.2/README ${WRK_BASEDIR}/share/doc/ghostscript/README.gs5.10-jpdf
	${INSTALL_DATA} ${DISTDIR}/pdf_sec.ps ${WRK_BASEDIR}/share/ghostscript/5.10vflib

.include <port.mk>

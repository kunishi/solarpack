#
# $Id: Makefile,v 1.6 2000/05/18 13:34:42 kunishi Exp $
#

PORTNAME=	vfghostscript
VERSION=	5.10
PORTREV=	1

PKG=		GNUgsvf
NAME=		GNU Ghostscript, with vflib and jpdf support

VENDOR=		Aladdin Enterprises <http://www.cs.wisc.edu/~ghost/>
DISTNAME=	ghostscript-${VERSION}
MASTER_SITES=	ftp://ftp.cs.wisc.edu/ghost/gnu/gs510/ \
		http://www.ldl.jaist.ac.jp/~akr/nonresearch/free-software/ghostscript/ \
		http://www.rd.nacsis.ac.jp/~katayama/homepage/ghostscript/jpdf/ \
		http://itohws03.ee.noda.sut.ac.jp/~matsuda/VFlib-FT/ \
		http://www.ozemail.com.au/~geoffk/pdfencrypt/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/distfiles/
DISTFILES=	ghostscript-${VERSION}.tar.gz
DISTFILES+=	ghostscript-fonts-std-${VERSION}.tar.gz
DISTFILES+=	ghostscript-fonts-other-${VERSION}.tar.gz
DISTFILES+=	ghostscript-${VERSION}jpeg.tar.gz
DISTFILES+=	ghostscript-${VERSION}libpng.tar.gz
DISTFILES+=	ghostscript-${VERSION}zlib.tar.gz
DISTFILES+=	gs${VERSION}-vflib-1.2.tar.gz
DISTFILES+=	gs${VERSION}-jpdf-0.2.tar.gz
DISTFILES+=	gs${VERSION}-VFlibBM-PL2.diff.gz
DISTFILES+=	pdf_sec.ps
EXTRACT_ONLY=	ghostscript-${VERSION}.tar.gz
EXTRACT_ONLY+=	ghostscript-${VERSION}jpeg.tar.gz
EXTRACT_ONLY+=	ghostscript-${VERSION}libpng.tar.gz
EXTRACT_ONLY+=	ghostscript-${VERSION}zlib.tar.gz

LIB_DEPENDS=	OPENvflib:${PORTSDIR}/print/VFlib2

WRKSRC=		${WRKDIR}/gs${VERSION}
MAKEFILE=	unix-gcc.mak
MAKE_ARGS+=	prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} INSTALL="${INSTALL} -c"

post-extract:
	cd ${WRKSRC}; find . -type f -exec chmod 644 '{}' ';'

pre-patch:
	cd ${WRKSRC}; ${MV} ../jpeg-6a jpeg-6a
	cd ${WRKSRC}; ${MV} ../libpng-0.96 libpng
	cd ${WRKSRC}; ${MV} ../zlib-1.1.3 zlib
	@cd ${WRKSRC}; ${TAR} xzf ${DISTDIR}/gs${VERSION}-vflib-1.2.tar.gz
	@cd ${WRKSRC}; ${TAR} xzf ${DISTDIR}/gs${VERSION}-jpdf-0.2.tar.gz
	@cd ${WRKDIR}; \
	  ${PATCH} -p0 < ${WRKSRC}/gs${VERSION}-vflib-1.2/gs${VERSION}-vflib-1.2.diff
	@cd ${WRKDIR}; \
	  ${PATCH} -p0 < ${WRKSRC}/gs${VERSION}-jpdf-0.2/gs${VERSION}-jpdf-0.2.diff
	@cd ${WRKDIR}; \
	  ${GZCAT} ${DISTDIR}/gs${VERSION}-VFlibBM-PL2.diff.gz | ${PATCH} -p0

pre-install:
	${MKDIR} ${INSTPREFIX}/share/ghostscript/fonts
	${TAR} -C ${INSTPREFIX}/share/ghostscript/fonts -xzf \
	  ${DISTDIR}/ghostscript-fonts-std-${VERSION}.tar.gz
	${TAR} -C ${INSTPREFIX}/share/ghostscript/fonts -xzf \
	  ${DISTDIR}/ghostscript-fonts-other-${VERSION}.tar.gz
	${CHOWN} -R root:bin ${INSTPREFIX}/share/ghostscript/fonts

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs${VERSION}-vflib-1.2/README ${INSTPREFIX}/share/doc/ghostscript/README.gs${VERSION}-vflib
	${INSTALL_DATA} ${WRKSRC}/gs${VERSION}-vflib-1.2/README.CID ${INSTPREFIX}/share/doc/ghostscript/README.CID.gs${VERSION}-vflib
	${INSTALL_DATA} ${WRKSRC}/gs${VERSION}-vflib-1.2/OLD-DOC/gs261d13-doc/* ${INSTPREFIX}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs${VERSION}-vflib-1.2/OLD-DOC/gs261j10-doc/* ${INSTPREFIX}/share/doc/ghostscript
	${INSTALL_DATA} ${WRKSRC}/gs${VERSION}-jpdf-0.2/README ${INSTPREFIX}/share/doc/ghostscript/README.gs${VERSION}-jpdf
	${INSTALL_DATA} ${DISTDIR}/pdf_sec.ps ${INSTPREFIX}/share/ghostscript/${VERSION}vflib

.include <port.mk>

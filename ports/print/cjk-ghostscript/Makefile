#
# $Id: Makefile,v 1.8 2001/11/16 14:08:12 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	cjk-ghostscript
VERSION=	6.51
PORTREV=	1

PKG=		OPUCcjkgs
NAME=		GNU Ghostscript with CJK extension

VENDOR=		Aladdin Enterprises <http://www.cs.wisc.edu/~ghost/>
DISTNAME=	ghostscript-${VERSION}
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/ghostscript/ \
		ftp://ftp.gyve.org/pub/gs-cjk/M2/ \
		ftp://ftp.gyve.org/pub/gs-cjk/
DISTFILES=	ghostscript-${VERSION}${EXTRACT_SUFX}
DISTFILES+=	${FONT_DISTFILES}
DISTFILES+=	jpegsrc.v6b.tar.gz
DISTFILES+=	libpng-1.2.0.tar.gz
DISTFILES+=	zlib-1.1.3.tar.gz
DISTFILES+=	gs${VERSION}-cjk-M2-R1.tar.gz
EXTRACT_ONLY=	ghostscript-${VERSION}${EXTRACT_SUFX} \
		gs${VERSION}-cjk-M2-R1.tar.gz \
		jpegsrc.v6b.tar.gz \
		libpng-1.2.0.tar.gz \
		zlib-1.1.3.tar.gz

FONT_DISTFILES=	gnu-gs-fonts-std-6.0.tar.gz \
		gnu-gs-fonts-other-6.0.tar.gz
CMAP_DISTFILES=	adobe-cmaps-200103.tar.gz \
		acro4-cmaps-1999.tar.gz

LIB_DEPENDS=	OPUCpng:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/ghostscript-${VERSION}
USE_ZLIB=	yes
ALL_TARGET=	std
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX}

GS_LIBDIR=	${PREFIX}/share/ghostscript
GS_INSTLIBDIR=	${INSTPREFIX}/share/ghostscript
X11_TTFONTDIR=	${X11BASE}/lib/locale/ja/X11/fonts/TT

pre-patch:
	cd ${WRKSRC}; \
	  ${CAT} ../gs${VERSION}-cjk-M2-R1/*.patch | ${PATCH} -p0 -b
	${CP} ${WRKSRC}/src/unix-gcc.mak ${WRKSRC}/Makefile

post-install:
.for file in ${FONT_DISTFILES}
	${TAR} -C ${GS_INSTLIBDIR} -xzf ${DISTDIR}/${file}
.endfor
	${MKDIR} ${GS_INSTLIBDIR}/Resource
	${MKDIR} ${GS_INSTLIBDIR}/Resource/Font
	${MKDIR} ${GS_INSTLIBDIR}/Resource/CIDFont
.for file in ${CMAP_DISTFILES}
	${TAR} -C ${GS_INSTLIBDIR}/Resource -xzf ${DISTDIR}/${file}
.endfor
	${TAR} -C ${GS_INSTLIBDIR}/Resource -xzf \
	  ${WRKDIR}/gs${VERSION}-cjk-M2-R1/install-cid.tar.gz
	cd ${GS_INSTLIBDIR}/${VERSION}/lib; \
	  ${PERL} -pi -e '\
		s,/FontResourceDir \(/Resource/Font/\),/FontResourceDir \(${GS_LIBDIR}/Resource/Font/\),; \
		s,/GenericResourceDir \(/Resource/\),/GenericResourceDir \(${GS_LIBDIR}/Resource/\),;' gs_res.ps; \
	  ${PERL} -pi -e 's/^%\(CIDFnmap.Sol\)/\(CIDFnmap.Sol\)/;' CIDFnmap; \
	  ${CAT} ${FILESDIR}/CIDFnmap.sub >> CIDFnmap
	cd ${GS_INSTLIBDIR}/Resource ; \
	  ${PERL} -pi -e 's,^(TTFontDir=)\S+,$$1${X11_TTFONTDIR},;' alias-cid.sh

.include <port.mk>

#
# $Id: Makefile,v 1.2 2000/01/19 01:31:20 kunishi Exp $
#

PKG=		OPENtex
NAME=		TeX-related programs that use the kpathsea library.
VERSION=	7.2b
VENDOR=		TeX Users Group <http://www.tug.org/>

DISTNAME=	web2c-7.2b
MASTER_SITES=	ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/systems/web2c/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/macros/latex/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		web-7.2a.tar.gz \
		texmflib-7.5.tar.gz \
		base.tar.gz \
		unpacked.tar.gz
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX} web-7.2a.tar.gz

WRKSRC=		${WRKDIR}/web2c-7.2

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

ALL_TARGET=	all
MAKE_INSTALL_ENV+=	TEXINPUTS=${INSTPREFIX}/share/texmf/tex//:
MAKE_INSTALL_ARGS+=	texmf=${INSTPREFIX}/share/texmf

CLASS_INFO=	info/kpathsea.info info/web2c.info

post-extract:
	${MKDIR} ${INSTPREFIX}/share
	${TAR} -xzf ${DISTDIR}/texmflib-7.5.tar.gz -C ${INSTPREFIX}/share
	${RM} -rf ${INSTPREFIX}/share/texmf/tex/latex/base
	${TAR} -xzf ${DISTDIR}/base.tar.gz \
	  -C ${INSTPREFIX}/share/texmf/tex/latex/
	${TAR} -xzf ${DISTDIR}/unpacked.tar.gz \
	  -C ${INSTPREFIX}/share/texmf/tex/latex/
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/texmf

post-install:
	${MV} ${INSTPREFIX}/share/texmf/metapost/support/charlib/~= \
	  ${INSTPREFIX}/share/texmf/metapost/support/charlib/tilde-equal

.include <port.mk>

#
# $Id: Makefile,v 1.8 2000/06/07 05:50:53 kunishi Exp $
#

PORTNAME=	ja-ptex
VERSION=	2.1.8
PORTREV=	2

PKG=		OPENptexj
NAME=		ASCII pTeX, JIS version

VENDOR=		ASCII Corporation, Inc., http://www.ascii.co.jp/pb/ptex/
DISTNAME=	web2c-7.2
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/ \
		ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/web2c/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/systems/web2c/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/macros/latex/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		web-7.2.tar.gz \
		texmflib-7.3.tar.gz \
		ptex218.tar.gz \
		plib-1.4-jis.tar.gz \
		Makefile.in.patch.txt
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX} web-7.2.tar.gz

WRKSRC=		${WRKDIR}/web2c-7.2

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_PERL5=	yes

ALL_TARGET=	all
MAKE_ARGS+=	texmf=${INSTPREFIX}/share/texmf
MAKE_INSTALL_ENV+=	TEXINPUTS=${INSTPREFIX}/share/texmf/tex//:
MAKE_INSTALL_ARGS+=	texmf=${INSTPREFIX}/share/texmf

CLASS_INFO=	info/kpathsea.info info/web2c.info

post-extract:
	${MKDIR} ${INSTPREFIX}/share
	${TAR} -C ${INSTPREFIX}/share -xzf ${DISTDIR}/texmflib-7.3.tar.gz
	${RM} -rf ${INSTPREFIX}/share/texmf/tex/latex/base
	${RM} -rf ${INSTPREFIX}/share/texmf/dvips
	${RM} -rf ${INSTPREFIX}/share/texmf/tex/plain/dvips
	${TAR} -xzf ${DISTDIR}/plib-1.4-jis.tar.gz -C ${INSTPREFIX}/share
	${TAR} -xzf ${DISTDIR}/ptex218.tar.gz -C ${WRKSRC}/web2c

post-patch:
	cd ${WRKSRC}/web2c/ptex218 && \
	  tr -d '\015' < ${DISTDIR}/Makefile.in.patch.txt | uudecode -p | \
	  ${PATCH}

post-configure:
	cd ${WRKSRC}/web2c/ptex218 && ./configure JIS

post-build:
	@cd ${WRKSRC}/web2c/ptex218 && \
	  ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}

post-install:
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/texmf
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${WRKSRC}
	@cd ${WRKSRC}/web2c/ptex218 && \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} ${INSTALL_TARGET} \
	  ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	${MV} ${INSTPREFIX}/share/texmf/metapost/support/charlib/~= \
	  ${INSTPREFIX}/share/texmf/metapost/support/charlib/tilde-equal
	${PERL} -pi -e 's|${INSTPREFIX}|${PREFIX}|g;' \
	  ${INSTPREFIX}/share/texmf/web2c/texmf.cnf

.include <port.mk>

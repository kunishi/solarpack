#
# $Id: Makefile,v 1.6 2000/05/23 09:49:27 kunishi Exp $
#

PORTNAME=	ja-ptex
VERSION=	2.1.8
PORTREV=	1

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
	${TAR} -xzf ${DISTDIR}/texmflib-7.3.tar.gz -C ${INSTPREFIX}/share
	${RM} -rf ${INSTPREFIX}/share/texmf/tex/latex/base
	${TAR} -xzf ${DISTDIR}/plib-1.4-jis.tar.gz -C ${INSTPREFIX}/share
	${TAR} -xzf ${DISTDIR}/ptex218.tar.gz -C ${WRKSRC}/web2c
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/texmf
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${WRKSRC}


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
	@cd ${WRKSRC}/web2c/ptex218 && \
	  ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} ${INSTALL_TARGET} \
	  ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	${MV} ${INSTPREFIX}/share/texmf/metapost/support/charlib/~= \
	  ${INSTPREFIX}/share/texmf/metapost/support/charlib/tilde-equal
	${PERL} -pi -e 's|${INSTPREFIX}|${PREFIX}|g;' \
	  ${INSTPREFIX}/share/texmf/web2c/texmf.cnf

.include <port.mk>

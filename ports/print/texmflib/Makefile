#
# $Id: Makefile,v 1.1 1999/08/31 12:09:13 kunishi Exp $
#

PKG=		OPENtxmfl
NAME=		Basic TeX&mf input files distribution.
VERSION=	7.3
VENDOR=		kb@cs.umb.edu

DISTNAME=	texmflib-${VERSION}
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/web2c/

NO_BUILD=	yes

do-install:
	${MKDIR} ${INSTPREFIX}/share
	cd ${WRKDIR} && \
	  (${TAR} cf - texmf | (cd ${INSTPREFIX}/share; ${TAR} xfBp -))
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/texmf
	cd ${INSTPREFIX}/share/texmf/metapost/support/charlib && ${MV} '~=' .temp

.include <port.mk>

#
# $Id: Makefile,v 1.2 2000/05/17 06:42:48 kunishi Exp $
#

PORTNAME=	texmflib
VERSION=	7.3
PORTREV=	1

PKG=		OPENtxmfl
NAME=		Basic TeX&mf input files distribution.

VENDOR=		kb@cs.umb.edu
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/web2c/

NO_BUILD=	yes

do-install:
	${MKDIR} ${INSTPREFIX}/share
	cd ${WRKDIR} && \
	  (${TAR} cf - texmf | (cd ${INSTPREFIX}/share; ${TAR} xfBp -))
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/texmf
	cd ${INSTPREFIX}/share/texmf/metapost/support/charlib && ${MV} '~=' .temp

.include <port.mk>

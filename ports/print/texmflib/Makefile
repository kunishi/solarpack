#
# $Id: Makefile,v 1.3 2000/09/27 01:27:55 kunishi Exp $
#

.include <port.pre.mk>

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

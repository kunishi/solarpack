#
# $Id: Makefile,v 1.1 2002/12/26 10:03:45 kunishi Exp $
#

PORTNAME=	ptex-lib
VERSION=	2.0.20021225
PORTREV=	1

PKG=		OPUCptxlb
NAME=		ASCII pTeX Libraries

MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/tetex/ \
		${MASTER_SITE_CTAN}
DIST_SUBDIR=	systems/unix/teTeX-beta
DISTFILES=	teTeX-texmf-beta-20021225.tar.gz \
		ptex-texmf-2.0.tar.gz \

NO_EXTRACT=	yes
NO_BUILD=	yes

do-install:
	@${MKDIR} ${INSTPREFIX}/share/texmf
.for file in ${DISTFILES}
	${TAR} -C ${INSTPREFIX}/share/texmf -xzf ${DISTDIR}/${file}
.endfor
	${RM} -f ${INSTPREFIX}/share/texmf/ls-R

.include <port.mk>

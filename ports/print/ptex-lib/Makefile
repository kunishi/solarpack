#
# $Id: Makefile,v 1.2 2002/12/27 12:22:23 kunishi Exp $
#

PORTNAME=	ptex-lib
VERSION=	2.0.20021225
PORTREV=	1

PKG=		OPUCptxlb
NAME=		ASCII pTeX Libraries

MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/tetex/ \
		${MASTER_SITE_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX-beta
DISTFILES=	teTeX-texmf-beta-20021225.tar.gz \
		ptex-texmf-2.0.tar.gz \

NO_EXTRACT=	yes
NO_BUILD=	yes

do-install:
	@${MKDIR} ${INSTPREFIX}/share/texmf
.for file in ${DISTFILES}
	${TAR} -C ${INSTPREFIX}/share/texmf -xzf ${DISTDIR}/${file}
.endfor
	echo "Map morisawa.map" >> ${INSTPREFIX}/share/texmf/web2c/updmap.cfg
	${RM} -f ${INSTPREFIX}/share/texmf/dvipdfm/config
	${RM} -f ${INSTPREFIX}/share/texmf/ls-R

.include <port.mk>

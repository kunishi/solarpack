#
# $Id: Makefile,v 1.4 2003/02/21 07:09:42 kunishi Exp $
#

PORTNAME=	ptex-lib
VERSION=	2.1.2.0
PORTREV=	1

PKG=		OPUCptxlb
NAME=		ASCII pTeX Libraries

MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/tetex/ \
		${MASTER_SITE_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/2.0/distrib
DISTFILES=	tetex-texmf-2.0.tar.gz \
		ptex-texmf-2.1.tar.gz

NO_EXTRACT=	yes
NO_BUILD=	yes

do-install:
	@${MKDIR} ${INSTPREFIX}/share/texmf
.for file in ${DISTFILES}
	${TAR} -C ${INSTPREFIX}/share/texmf -xzf ${DISTDIR}/${file}
.endfor
	${INSTALL_DATA} ${FILESDIR}/morisawa.map ${INSTPREFIX}/share/texmf/dvips/config
	echo "Map morisawa.map" >> ${INSTPREFIX}/share/texmf/web2c/updmap.cfg
	${RM} -f ${INSTPREFIX}/share/texmf/dvipdfm/config
	${RM} -f ${INSTPREFIX}/share/texmf/ls-R

.include <port.mk>

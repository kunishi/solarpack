#
# $Id: Makefile,v 1.2 1999/05/19 01:42:46 kunishi Exp $
#

DISTNAME=	xpbiff
PKGNAME=	xpbiff-1.27
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
EXTRACT_SUFX=	.tar.Z
DISTFILES=	xpbiff-1.27-with-YOUBIN.tar.gz.uu

PATCH_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
PATCHFILES=	xpbiff-1.27-with-YOUBIN.patch-1
PATCH_DIST_STRIP=	-p1

USE_IMAKE=	yes
NO_INSTALL_MAN=	yes

do-extract:
	@(cd ${DISTDIR}; \
	  if [ ! -f ${DISTNAME}.tar.gz ]; then \
	   uudecode ${DISTFILES}; \
	  fi)
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@(cd ${WRKDIR}; ${GTAR} -xzf ${DISTDIR}/${DISTNAME}.tar.gz)

post-install:
	@${MKDIR} ${WRK_BASEDIR}/lib/X11/app-defaults
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/XPbiff*.ad ${WRK_BASEDIR}/lib/X11/app-defaults
	@${MKDIR} ${WRK_BASEDIR}/share/doc/xpbiff
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/README* ${WRK_BASEDIR}/share/doc/xpbiff

.include <port.mk>

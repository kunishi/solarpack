#
# $Id: Makefile,v 1.5 2000/05/17 06:42:49 kunishi Exp $
#

PORTNAME=	xpbiff
VERSION=	1.27
PORTREV=	1

PKG=		OPENxpbyb
NAME=		Xpbiff with youbin support

VENDOR=		Kazuhiko Shutoh <shutoh@lm.emi.yamaha.co.jp>
DISTNAME=	${PORTNAME}
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
EXTRACT_SUFX=	.tar.Z
DISTFILES=	${DISTNAME}-${VERSION}-with-YOUBIN.tar.gz.uu

PATCH_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
PATCHFILES=	${DISTNAME}-${VERSION}-with-YOUBIN.patch-1
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
	@(cd ${WRKDIR}; ${TAR} -xzf ${DISTDIR}/${DISTNAME}.tar.gz)

post-install:
	@${MKDIR} ${INSTPREFIX}/lib/X11/app-defaults
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/XPbiff*.ad ${INSTPREFIX}/lib/X11/app-defaults
	@${MKDIR} ${INSTPREFIX}/share/doc/xpbiff
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/README* ${INSTPREFIX}/share/doc/xpbiff

.include <port.mk>

#
# $Id: Makefile,v 1.15 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	bmake
VERSION=	3.0.2
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPbmake
NAME=		Solaris Application Packaging tools: BSD make tool
.else
PKG=		OPENbmake
NAME=		BSD make tool
.endif

VENDOR=		Simon J. Gerraty <sjg@quick.com.au>
MASTER_SITES=	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC=		${WRKDIR}/${PORTNAME}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} mk-1.1.tar.gz
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile.boot
MAKE_ARGS+=	XDEFS='-D_PATH_DEFSYSMK=\"${PREFIX}/share/mk/sys.mk\" -D_PATH_DEFSYSPATH=\"${PREFIX}/share/mk:/usr/local/share/mk:/opt/share/mk\"'

INSTALL_TARGET=	install install-man install-mk

post-extract:
	${TAR} -C ${WRKSRC} -xzf ${DISTDIR}/mk-1.1.tar.gz

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin

post-install:
	@${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	@${INSTALL} -c -m 644 -o ${SHAREOWN} -g ${SHAREGRP} \
	  ${WRKSRC}/PSD.doc/tutorial.ms ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>

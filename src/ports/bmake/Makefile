#
# $Id: Makefile,v 1.5 1999/06/03 12:17:29 kunishi Exp $
#

DISTNAME=	bmake-2.1.14
MASTER_SITES=	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC=		${WRKDIR}/bmake

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKEFILE=	makefile.boot

CORE_TOOLS=	yes

pre-install:
	@${MKDIR} ${WRK_BASEDIR}/bin

post-install:
	@${MKDIR} ${WRK_BASEDIR}/share/doc/bmake
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKDIR}/help/*.html ${WRKDIR}/help/*.htm \
		${WRK_BASEDIR}/share/doc/bmake

.include <port.mk>

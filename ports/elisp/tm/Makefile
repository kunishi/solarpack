# 
# $Id: Makefile,v 1.1 1999/05/21 11:10:45 kunishi Exp $
#

DISTNAME=	tm-7.106
MASTER_SITES=	ftp://ftp.jaist.ac.jp/pub/GNU/elisp/mime/

WRKSRC=		${WRKDIR}/${DISTNAME}/tm

USE_GMAKE=	yes
MAKE_ARGS+=	EMACS=mule
MAKE_INSTALL_ARGS+=	EMACS=mule PREFIX=${WRK_BASEDIR} \
			EXEC_PREFIX=${WRK_BASEDIR}

.include <port.mk>

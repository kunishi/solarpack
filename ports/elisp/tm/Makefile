# 
# $Id: Makefile,v 1.2 1999/06/05 06:34:49 kunishi Exp $
#

PKG=		OPENtm
NAME=		Tools for MIME, MIME package for GNU Emacs
VERSION=	7.106
VENDOR=		MORIOKA Tomohiko <morioka@jaist.ac.jp>

DISTNAME=	tm-${VERSION}
MASTER_SITES=	ftp://ftp.jaist.ac.jp/pub/GNU/elisp/mime/

WRKSRC=		${WRKDIR}/${DISTNAME}/tm

USE_GMAKE=	yes
MAKE_ARGS+=	EMACS=mule
MAKE_INSTALL_ARGS+=	EMACS=mule PREFIX=${WRK_BASEDIR} \
			EXEC_PREFIX=${WRK_BASEDIR}

.include <port.mk>

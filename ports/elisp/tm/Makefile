# 
# $Id: Makefile,v 1.3 1999/06/09 02:34:15 kunishi Exp $
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
MAKE_INSTALL_ARGS+=	EMACS=mule PREFIX=${INSTPREFIX} \
			EXEC_PREFIX=${INSTPREFIX}

.include <port.mk>

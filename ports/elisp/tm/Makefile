# 
# $Id: Makefile,v 1.5 2000/09/27 01:27:45 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tm
VERSION=	7.106
PORTREV=	1

PKG=		OPENtm
NAME=		Tools for MIME, MIME package for GNU Emacs

VENDOR=		MORIOKA Tomohiko <morioka@jaist.ac.jp>
MASTER_SITES=	ftp://ftp.jaist.ac.jp/pub/GNU/elisp/mime/

WRKSRC=		${WRKDIR}/${DISTNAME}/tm

USE_GMAKE=	yes
MAKE_ARGS+=	EMACS=mule
MAKE_INSTALL_ARGS+=	EMACS=mule PREFIX=${INSTPREFIX} \
			EXEC_PREFIX=${INSTPREFIX}

.include <port.mk>

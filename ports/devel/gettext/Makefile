#
# $Id: Makefile,v 1.6 2000/06/29 13:35:30 kunishi Exp $
# 

PORTNAME=	gettext
VERSION=	0.10.35
PORTREV=	2

PKG=		GNUgetxt
NAME=		GNU gettext package

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://alpha.gnu.ai.mit.edu/gnu/ \
		ftp://alpha.gnu.org/pub/gnu/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	lispdir=${INSTPREFIX}/share/emacs/site-lisp

CLASS_INFO=	info/gettext.info

.include <port.mk>

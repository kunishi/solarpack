#
# $Id: Makefile,v 1.8 2001/05/28 13:56:52 kunishi Exp $
# 

.include <port.pre.mk>

PORTNAME=	gettext
VERSION=	0.10.35
PORTREV=	3

PKG=		GNUgetxt
NAME=		GNU gettext package

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://alpha.gnu.ai.mit.edu/gnu/ \
		ftp://alpha.gnu.org/pub/gnu/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	lispdir=${INSTPREFIX}/share/emacs/site-lisp

CLASS_INFO=	info/gettext.info

.include <port.mk>

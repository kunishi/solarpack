#
# $Id: Makefile,v 1.7 2000/09/27 01:27:42 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	m4
VERSION=	1.4
PORTREV=	1

PKG=		GNUm4
NAME=		GNU m4, an implementation of the traditional Unix macro processor.

VENDOR=		${VENDOR_GNU}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/m4/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/m4/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CLASS_INFO=	info/m4.info

.include <port.mk>

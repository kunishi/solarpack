#
# $Id: Makefile,v 1.2 2000/09/27 01:27:50 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	mpeg_lib
VERSION=	1.3.1
PORTREV=	1

PKG=		OPENmpglb
NAME=		A collection of C routines to decode MPEG movies
VENDOR=		Gregory P. Ward (gward@python.net)

MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ENV+=	OPTIMIZE="${CFLAGS}"

.include <port.mk>

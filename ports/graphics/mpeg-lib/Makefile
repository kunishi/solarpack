#
# $Id: Makefile,v 1.3 2001/11/12 10:12:38 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	mpeg_lib
VERSION=	1.3.1
PORTREV=	2

PKG=		OPUCmpglb
NAME=		A collection of C routines to decode MPEG movies
VENDOR=		Gregory P. Ward (gward@python.net)

MASTER_SITES=	ftp://ftp.bic.mni.mcgill.ca/pub/mpeg/ \
		http://starship.python.net/~gward/mpeglib/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ENV+=	OPTIMIZE="${CFLAGS}"

.include <port.mk>

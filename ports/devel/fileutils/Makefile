#
# $Id: Makefile,v 1.7 2002/03/15 11:22:15 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	fileutils
VERSION=	4.1
PORTREV=	1

PKG=		OPUCfileu
NAME=		GNU fileutils

VENDOR=		${VENDOR_GNU}
MASTER_SITES =	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/fileutils/ \
		ftp:/ftp.gnu.org/pub/gnu/fileutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CLASS_INFO=	info/fileutils.info

.include <port.mk>

#
# $Id: Makefile,v 1.16 2003/02/27 04:15:01 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	texinfo
VERSION=	4.5
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPtxinf
NAME=		Solaris Application Packaging tools: GNU texinfo tools
.else
PKG=		OPUCtxinf
NAME=		GNU texinfo tools
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/texinfo/ \
		ftp://ftp.gnu.org/pub/gnu/texinfo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

PKG_WITHOUT_GZIP=	yes
CLASS_INFO=	info/info-stnd.info info/info.info info/texinfo

.include <port.mk>

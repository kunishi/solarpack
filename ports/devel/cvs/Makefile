#
# $Id: Makefile,v 1.16 2001/11/28 12:20:29 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	cvs
VERSION=	1.11.1p1
PORTREV=	1

PKG=		OPUCcvs
NAME=		CVS, Concurrent Version System

VENDOR=		Cyclic Software, Com. <http://www.cvshome.org/>
MASTER_SITES=	ftp://ftp.cvshome.org/pub/cvs-${VERSION:S/p1//}/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--without-gssapi
USE_GMAKE=	yes
USE_PERL5=	yes

CLASS_INFO=	info/cvs.info info/cvsclient.info

.include <port.mk>

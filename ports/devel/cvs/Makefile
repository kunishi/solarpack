#
# $Id: Makefile,v 1.18 2003/01/22 04:55:09 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	cvs
VERSION=	1.11.5
PORTREV=	1

PKG=		OPUCcvs
NAME=		CVS, Concurrent Version System

VENDOR=		Cyclic Software, Com. <http://www.cvshome.org/>
MASTER_SITES=	http://ftp.cvshome.org/cvs-${VERSION:S/p1//}/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--without-gssapi
USE_GMAKE=	yes
USE_PERL5=	yes

CLASS_INFO=	info/cvs.info info/cvsclient.info

.include <port.mk>

#
# $Id: Makefile,v 1.12 2000/06/05 11:14:46 kunishi Exp $
#

PORTNAME=	cvs
VERSION=	1.10.8
PORTREV=	1

PKG=		OPENcvs
NAME=		CVS, Concurrent Version System

VENDOR=		Cyclic Software, Com. <http://www.cvshome.org/>
MASTER_SITES=	ftp://ftp.cvshome.org/pub/cvs-${VERSION}/
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/cvs.info

BUILD_DEPENDS+=	OPENperl:${PORTSDIR}/lang/perl5
RUN_DEPENDS+=	OPENperl:${PORTSDIR}/lang/perl5

.include <port.mk>

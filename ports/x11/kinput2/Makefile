#
# $Id: Makefile,v 1.7 2001/03/02 08:53:11 kunishi Exp $
# 

.include <port.pre.mk>

PORTNAME=	kinput2-canna+wnn6
VERSION=	3.0
PORTREV=	2

PKG=		OPENkinp2
NAME=		kinput2, an input server for easy input of Japanese text

VENDOR=		Makoto Ishisone <ishisone@sra.co.jp>
DISTNAME=	kinput2-v3
MASTER_SITES=	ftp://ftp.sra.co.jp/pub/x11/kinput2/

USE_IMAKE=	yes

LIB_DEPENDS=	OPENcanna:${PORTSDIR}/japanese/Canna
MAKE_INSTALL_ARGS+=	MFLAGS='XAPPLOADDIR=${X11BASE}/lib/app-defaults'

.include <port.mk>

#
# $Id: Makefile,v 1.4 2001/11/12 08:40:23 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gnuplot
VERSION=	3.7.1
PORTREV=	2

PKG=		OPUCgnupl
NAME=		A command-driven interactive function plotting program
VENDOR=		Thomas Williams and Lars Hecking

MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/

LIB_DEPENDS=	OPUCpng:${PORTSDIR}/graphics/png \
		OPUCgd:${PORTSDIR}/graphics/gd

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--with-x --without-linux-vga \
			--with-gd=${LOCALBASE}/lib --with-png

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/gnuplot
	cd ${WRKSRC}/demo; \
	for example in ${WRKSRC}/demo/*; \
	  do ${INSTALL_DATA} $${example} ${INSTPREFIX}/share/doc/gnuplot; \
	done

.include <port.mk>

#
# $Id: Makefile,v 1.1 2000/06/23 11:17:56 kunishi Exp $
#

PORTNAME=	gnuplot
VERSION=	3.7.1
PORTREV=	1

PKG=		GNUplot
NAME=		A command-driven interactive function plotting program
VENDOR=		Thomas Williams and Lars Hecking

MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/

LIB_DEPENDS=	OPENpng:${PORTSDIR}/graphics/png \
		OPENgd:${PORTSDIR}/graphics/gd

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

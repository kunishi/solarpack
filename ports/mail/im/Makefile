#
# $Id: Makefile,v 1.7 2001/11/13 11:07:37 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	im
VERSION=	140
PORTREV=	1

PKG=		OPENim
NAME=		Internet Message, Perl5 commands to integrate Email and NetNews handling.

VENDOR=		IM developing team <http://www.mew.org/>
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

GNU_CONFIGURE=yes
CONFIGURE_ARGS+=	--enable-rpop
USE_PERL5=	yes

EDITABLE_FILES+=	lib/im/SiteConfig
DOCS=	00changes 00copyright 00copyright.jis 00perl 00readme 00usage \
	man/imali.jis man/imcat.jis man/imcd.jis man/imclean.jis \
	man/imget.jis man/imhist.jis man/imjoin.jis man/immv.jis \
	man/impack.jis man/imput man/imput.jis man/imrm.jis \
	man/imsetup.jis man/imsort.jis man/imstore.jis man/imtar.jis

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/im
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${INSTPREFIX}/share/doc/im
.endfor

.include <port.mk>

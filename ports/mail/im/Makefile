#
# $Id: Makefile,v 1.1 1999/05/21 09:18:51 kunishi Exp $
#

DISTNAME=	im-100
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

GNU_CONFIGURE=yes
CONFIGURE_ARGS+=	--enable-rpop

DOCS=	00changes 00copyright 00copyright.jis 00perl 00readme 00usage \
	man/imali.jis man/imcat.jis man/imcd.jis man/imclean.jis \
	man/imget.jis man/imhist.jis man/imjoin.jis man/immv.jis \
	man/impack.jis man/imput man/imput.jis man/imrm.jis \
	man/imsetup.jis man/imsort.jis man/imstore.jis man/imtar.jis

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/im
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${WRK_BASEDIR}/share/doc/im
.endfor

.include <port.mk>

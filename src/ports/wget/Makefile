include pre.mk

DISTNAME=	wget-1.5.3
MASTER_SITES=	ftp://psi.c.oka-pu.ac.jp/pub/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/
GNU_CONFIGURE=	yes

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${WRK_BASEDIR}/share/examples/wget/sample.wgetrc

include pkgbuild.mk

PKGNAME:=	wget-1.5.3
BASEDIR:=	/usr/local

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${WRK_BASEDIR}/share/examples/wget/sample.wgetrc

include pkgbuild.mk

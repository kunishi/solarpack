#
# $Id: Makefile,v 1.1 2000/06/20 06:33:11 kunishi Exp $
#

PORTNAME=	smlnj
VERSION=	110.0.6
PORTREV=	1

PKG=		OPENsmlnj
NAME=		Standard ML for New-Jersey, stable version
VENDOR=		New-Jersey Univ.

MASTER_SITES=	ftp://ftp.research.bell-labs.com/dist/smlnj/release/${VERSION}/ \
		ftp://rodin.stanford.edu/pub/smlnj/release/${VERSION}/
DISTFILES=	110-bin.${SML_ARCH}-unix.tar.Z \
		110-cm.tar.Z 110-cml.tar.Z 110-config.tar.Z \
		110-eXene.tar.Z 110-ml-burg.tar.Z 110-ml-lex.tar.Z \
		110-ml-yacc.tar.Z 110-runtime.tar.Z \
		110-smlnj-c.tar.Z 110-smlnj-lib.tar.Z
EXTRACT_ONLY=	110-config.tar.Z

# seems to be needed gas to compile i386 architecture.
ONLY_FOR_ARCHS=	sparc

WRKSRC=		${WRKDIR}
PROTOTYPE_SUB+=	SML_ARCH=${SML_ARCH}

USE_PERL5=	yes

.if (${ARCH} == "sparc")
SML_ARCH=	sparc
.elif (${ARCH} == "i386")
SML_ARCH=	x86
.endif

post-extract:
	cd ${DISTDIR} && ${CP} ${DISTFILES} ${WRKDIR}

do-build:
	cd ${WRKDIR} && unset PWD && ./config/install.sh

do-install:
	${MKDIR} ${INSTPREFIX}/smlnj
	cd ${WRKDIR} && \
	  ${TAR} cf - bin lib | (cd ${INSTPREFIX}/smlnj; ${TAR} xfBp -)
	${PERL} -pi -e 's|^BIN_DIR=.*|BIN_DIR=${PREFIX}/smlnj/bin|;' \
	  ${INSTPREFIX}/smlnj/bin/.run-sml

.include <port.mk>

#
# $Id: Makefile,v 1.4 2001/04/17 05:52:02 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	smlnj
VERSION=	110.0.7
PORTREV=	1

PKG=		OPENsmlnj
NAME=		Standard ML for New-Jersey, stable version
VENDOR=		New-Jersey Univ.

MASTER_SITES=	ftp://ftp.research.bell-labs.com/dist/smlnj/release/${VERSION}/ \
		ftp://rodin.stanford.edu/pub/smlnj/release/${VERSION}/
DISTFILES=	bin.${SML_ARCH}-unix.tar.Z \
		cm.tar.Z cml.tar.Z config.tar.Z \
		eXene.tar.Z ml-burg.tar.Z ml-lex.tar.Z \
		ml-yacc.tar.Z runtime.tar.Z \
		smlnj-c.tar.Z smlnj-lib.tar.Z
EXTRACT_ONLY=	config.tar.Z

WRKSRC=		${WRKDIR}
PROTOTYPE_SUB+=	SML_ARCH=${SML_ARCH}

USE_BINUTILS=	yes
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

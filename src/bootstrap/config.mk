#
# Makefile configuration file for standard Solaris make
# $Id: config.mk,v 1.7 2001/03/23 06:56:26 kunishi Exp $
#

WORKDIR=	${TOPDIR}/work
DISTDIR=	${TOPDIR}/distfiles
LOCALBASE?=	/usr/pkg
PREFIX=		${LOCALBASE}
TMPPREFIX=	${WORKDIR}${LOCALBASE}
BOOTSTRAPDIR=	${TOPDIR}/bootstrap

CC?=		gcc
CXX?=		c++
ECHO_MSG=	echo
ENV=		env
EXTRACT_CMD=	tar xf
GNUPATCH=	gpatch
GUNZIP=		gzip -c -d
MAKE?=		make
MKDIR=		mkdir -p
PATCH=		patch
TOUCH=		touch

PKGMK=		pkgmk -o
PKGPROTO=	pkgproto
PKGTRANS=	pkgtrans -o

DO_NADA=	true
GNU_CONFIGURE=	./configure
INSTALL_PROGRAM=	/usr/ucb/install -c -m 755
INSTALL_DATA=		/usr/ucb/install -c -m 644

PATCH_COOKIE=		.patch_done
CONFIGURE_COOKIE=	.configure_done
BUILD_COOKIE=		.build_done
INSTALL_COOKIE=		.install_done

BUILD_TARGET=		# none
INSTALL_TARGET=		install
CLEAN_TARGET=		clean

CONFIGURE_ENV=	LANG=C
MAKE_ENV=	TOPDIR=${TOPDIR} \
		LANG=C \
		LOCALBASE=${LOCALBASE} \
		PATH=${PATH}
INSTALL_ENV=	${MAKE_ENV}

CONFIGURE_ARGS=	--prefix=${PREFIX}
MAKE_INSTALL_ARGS=	PREFIX=${TMPPREFIX} prefix=${TMPPREFIX}

MAINTAINER=	kunishi@acm.org

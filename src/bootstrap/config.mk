#
# Makefile configuration file for standard Solaris make
# $Id: config.mk,v 1.5 2001/02/22 08:38:01 kunishi Exp $
#

WORKDIR=	${TOPDIR}/work
DISTDIR=	${TOPDIR}/distfiles
LOCALBASE=	/usr/pkg
PREFIX=		${LOCALBASE}
TMPPREFIX=	${WORKDIR}${LOCALBASE}
BOOTSTRAPDIR=	${TOPDIR}/bootstrap

ECHO_MSG=	echo
ENV=		env
EXTRACT_CMD=	tar xf
MAKE?=		make
MKDIR=		mkdir -p
PATCH=		patch
TOUCH=		touch
DO_NADA=	true
INSTALL_PROGRAM=	/usr/ucb/install -c -m 755

GUNZIP=		gzip -c -d
GNUPATCH=	gpatch

CC?=		gcc

PATCH_COOKIE=		.patch_done
CONFIGURE_COOKIE=	.configure_done
BUILD_COOKIE=		.build_done
INSTALL_COOKIE=		.install_done

CONFIGURE_ENV=	LANG=C
MAKE_ENV=	TOPDIR=${TOPDIR} \
		LANG=C \
		LOCALBASE=${LOCALBASE} \
		PATH=${PATH}
INSTALL_ENV=	${MAKE_ENV}
MAKE_INSTALL_ARGS=	PREFIX=${TMPPREFIX} prefix=${TMPPREFIX}

MAINTAINER=	kunishi@c.oka-pu.ac.jp

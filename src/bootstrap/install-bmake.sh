#!/bin/sh

WORKDIR=${TOPDIR}/work
DISTDIR=${TOPDIR}/distfiles
TMPPREFIX=${WORKDIR}/usr/local

SRCURL='ftp://ftp.quick.com.au/pub/sjg/bmake-2.2.3.tar.gz'

/usr/bin/mkdir -p ${WORKDIR} ${DISTDIR}
(cd ${DISTDIR} && ${TMPPREFIX}/bin/ftp ${SRCURL})
(cd ${WORKDIR}; \
  gzip -c -d ${DISTDIR}/bmake-2.2.3.tar.gz | /usr/bin/tar xfBp -)
(cd ${WORKDIR}/bmake; \
  /usr/bin/patch -c < ${TOPDIR}/bootstrap/bmake.patch; \
  /usr/bin/env CC=${TMPPREFIX}/bin/gcc \
    ./configure --prefix=${TMPPREFIX}; \
  ${TMPPREFIX}/bin/gmake -f makefile.boot; \
  ${TMPPREFIX}/bin/gmake install -f makefile.boot)

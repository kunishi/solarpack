#!/bin/sh

WORKDIR=${TOPDIR}/work
DISTDIR=${TOPDIR}/distfiles
TMPPREFIX=${WORKDIR}/usr/local

SRCURL='ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/make-3.78.1.tar.gz'

/usr/bin/mkdir -p ${WORKDIR} ${DISTDIR}
(cd ${DISTDIR} && ${TMPPREFIX}/bin/ftp ${SRCURL})
(cd ${WORKDIR}; \
  gzip -c -d ${DISTDIR}/make-3.78.1.tar.gz | /usr/bin/tar xfBp -)
(cd ${WORKDIR}/make-3.78.1; \
  /usr/bin/env CC=${TMPPREFIX}/bin/gcc ./configure --prefix=${TMPPREFIX} --program-prefix=g; \
  /usr/ccs/bin/make; \
  /usr/ccs/bin/make install)

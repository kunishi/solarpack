#
# $Id: Makefile,v 1.3 2000/01/07 01:55:09 kunishi Exp $
#
# This file is only for maitenance.
# Users do not need to use this makefile in any case.

CVSROOT=	bloodstone:/export/share/cvsroot

# redefinition of CORE_TOOLS (copied from ../Makefile.in)
CORE_TOOLS=	Mk Template bmake gcc gmake gtar gzip lukemftp md5 patch texinfo

.PHONY: none checkout-core-ports clean

all:	none

none:
	/usr/bin/true

checkout-core-ports:
	cvs -d ${CVSROOT} checkout ${CORE_TOOLS}

clean:
	/usr/bin/rm -rf ${CORE_TOOLS}

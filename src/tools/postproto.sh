#!/bin/sh
#
# $Id: postproto.sh,v 1.4 1999/05/21 02:13:00 kunishi Exp $
#
/usr/bin/sort +2 | /usr/bin/uniq | \
/usr/bin/sed \
	-e '1 i\
i pkginfo=%%PKGDIR%%/pkginfo' \
	-e 's?^\(f .*\) \(0[0-9]*\) root other?\1 \2 root bin?' \
	-e 's?^\(d .*\) root other?\1 root bin?' \
	-e 's?^\(. none\) \(.*\) \([0-9]* .*\)?\1 \2=%%WRK_BASEDIR%%/\2 \3?'

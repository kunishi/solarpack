#!/bin/sh
#
# $Id: postproto.sh,v 1.3 1999/05/13 12:16:29 kunishi Exp $
#
/usr/bin/sort +2 | /usr/bin/uniq | \
/usr/bin/sed \
	-e 's?^\(f .*\) \(0[0-9]*\) root other?\1 \2 root bin?' \
	-e 's?^\(d .*\) root other?\1 root bin?' \
	-e 's?^\(. none\) \(.*\) \([0-9]* .*\)?\1 \2=%%WRK_BASEDIR%%/\2 \3?'

#!/bin/sh
#
# $Id: postproto.sh,v 1.1 1999/04/27 11:43:19 kunishi Exp $
#
/usr/bin/sort +2 | \
/usr/bin/sed \
	-e 's?^\(f .*\) kunishi dblab?\1 bin bin?' \
	-e 's?^\(d .*\) kunishi dblab?\1 root bin?' \
	-e 's?^\(. none\) \(.*\) \([0-9]* .*\)?\1 \2=%%WRK_BASEDIR%%/\2 \3?'

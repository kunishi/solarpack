#!/bin/sh
#
# $Id: mozilla.sh,v 1.1 2000/09/26 09:05:33 kunishi Exp $

cd @PREFIX@/lib/mozilla
exec ./mozilla $*

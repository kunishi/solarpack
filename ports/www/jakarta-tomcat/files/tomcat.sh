#!/bin/sh

case "$1" in
'start'|'stop'|'env'|'run'|'ant')
	if [ -f %%PREFIX%%/tomcat/bin/tomcat.sh ]; then
		%%PREFIX%%/tomcat/bin/tomcat.sh $1
	fi
	;;
*)
	echo "usage: $0 {start|env|run|stop|ant}"
	;;
esac

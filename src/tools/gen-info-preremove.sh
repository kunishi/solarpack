#!/bin/sh

cat <<EOH
INFODIR=\$CLIENT_BASEDIR/info
INSTALL_INFO=\$CLIENT_BASEDIR/bin/install-info

if test -x \${INSTALL_INFO}; then
EOH

for target in $*; do
	echo '	${INSTALL_INFO} --delete --info-dir=${INFODIR} ${INFODIR}/'${target}
done

cat <<EOE
else
EOE

for target in $*; do
	echo '	/usr/bin/echo ">> Remove '${target}' entry to ${INFODIR}/dir by hand."'
done

cat <<EOT
fi
EOT

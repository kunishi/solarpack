DIST_PKGS=	SUNWgzip SUNWgpch SFWgcc SFWgmake
BUILD_PKGS_GNU=	make gperf tar texinfo
BUILD_PKGS_BSD=	lukemftp bmake md5
EXTRA_PATH=	# none
CC=		/opt/sfw/bin/gcc

GMAKE=		gmake # /opt/sfw/bin, which is included in ${PATH}.

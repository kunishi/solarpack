--- src/s/usg5-4.h.orig	Fri Feb 28 12:49:11 2003
+++ src/s/usg5-4.h	Fri Feb 28 12:49:23 2003
@@ -198,9 +198,11 @@
    So give it a try.  */
 #define HAVE_SOCKETS
 
+#if 0
 #define bcopy(src,dst,n)	memmove (dst,src,n)
 #define bcmp(src,dst,n)		memcmp (src,dst,n)
 #define bzero(s,n)		memset (s,0,n)
+#endif
 
 /* Markus Weiand <weiand@khof.com> says this is needed for Motif on
    SINIX.  */

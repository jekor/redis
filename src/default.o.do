. make-settings

CC=cc

FINAL_CFLAGS="$STD $WARN $OPT $DEBUG $CFLAGS $REDIS_CFLAGS"
REDIS_CC="$CC $FINAL_CFLAGS"

redo-ifchange $2.c .make-prerequisites
$REDIS_CC -c $2.c -o $3

# redo doesn't define variables like $CC, which redis's Makefile rules depend on
CC=cc

REDIS_CLI_OBJ="anet.o sds.o adlist.o redis-cli.o zmalloc.o release.o ae.o crc64.o"

FINAL_LDFLAGS="$LDFLAGS $REDIS_LDFLAGS $DEBUG"
REDIS_LD="$CC $FINAL_LDFLAGS"
FINAL_LIBS=-lm

redo-ifchange $REDIS_CLI_OBJ
$REDIS_LD -o $3 $REDIS_CLI_OBJ ../deps/hiredis/libhiredis.a ../deps/linenoise/linenoise.o $FINAL_LIBS

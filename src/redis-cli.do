OBJS="anet.o sds.o adlist.o redis-cli.o zmalloc.o release.o ae.o crc64.o ../deps/hiredis/libhiredis.a ../deps/linenoise/linenoise.o"

redo-ifchange ld
redo-ifchange $OBJS
./ld -o $3 $OBJS

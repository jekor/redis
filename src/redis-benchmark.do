OBJS="ae.o anet.o redis-benchmark.o sds.o adlist.o zmalloc.o ../deps/hiredis/libhiredis.a"

redo-ifchange ld
redo-ifchange $OBJS
./ld -o $3 $OBJS

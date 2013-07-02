OBJS="redis-check-dump.o lzf_c.o lzf_d.o crc64.o"

redo-ifchange ld
redo-ifchange $OBJS
./ld -o $3 $OBJS

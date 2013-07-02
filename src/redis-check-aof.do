OBJS="redis-check-aof.o"

redo-ifchange ld
redo-ifchange $OBJS
./ld -o $3 $OBJS

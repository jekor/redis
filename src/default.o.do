redo-ifchange cc
redo-ifchange $(./cc -MM $2.c | tr -d '\n\\' | cut -d':' -f2)
./cc -c $2.c -o $3

redo-ifchange environment

. environment
echo -e "#!/bin/sh\n$CC $LDFLAGS $LIBS \$@" > $3
chmod +x $3

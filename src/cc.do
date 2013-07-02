redo-ifchange environment

. environment
echo -e "#!/bin/sh\n$CC $CFLAGS \$@" > $3
chmod +x $3

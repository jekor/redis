redo-ifchange environment

. environment
echo -e "#!/bin/sh\n$INSTALL \$@" > $3
chmod +x $3

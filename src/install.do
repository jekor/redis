redo-ifchange environment
redo-ifchange inst
. environment
redo-ifchange $BINARIES

PREFIX=${PREFIX-/usr/local}
INSTALL_BIN=$PREFIX/bin

mkdir -p $INSTALL_BIN
./inst $BINARIES $INSTALL_BIN

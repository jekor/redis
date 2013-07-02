echo "" 1>&2
echo "WARNING: if it fails under Linux you probably need to install libc6-dev-i386" 1>&2
echo "" 1>&2

echo -e "CFLAGS=\"-m32\"\nLDFLAGS=\"-m32\"" > extra-flags
redo all
rm extra-flags

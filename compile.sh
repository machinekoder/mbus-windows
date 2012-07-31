
i686-pc-mingw32-gcc -g -I. mbus.c mbus-protocol.c mbus-protocol-aux.c mbus-serial-windows.c   mbus-serial-scan.c -o mbus-serial-scan.exe

###
cp mbus-serial-scan.exe /cygdrive/Z/mbus


CC="i686-pc-mingw32-gcc -I. "
$CC mbus.c mbus-protocol.c mbus-protocol-aux.c mbus-serial-windows.c -c
$CC -U-shared -W1,--subsystem,windows mbus.o mbus-protocol.o mbus-protocol-aux.o mbus-serial-windows.o -o mbus.dll
$CC -o mbus-serial-request-data mbus-serial-request-data.c -lmbus -L.
$CC -o mbus-serial-scan-secondary mbus-serial-scan-secondary.c -lmbus -L.
$CC -o mbus-serial-scan mbus-serial-scan.c -lmbus -L.
$CC -o mbus-serial-select-secondary mbus-serial-select-secondary.c -lmbus -L.
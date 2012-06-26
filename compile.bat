gcc -I "../" mbus.c mbus-protocol.c mbus-protocol-aux.c mbus-serial-windows.c -c
gcc -shared -W1,--subsystem,windows mbus.o mbus-protocol.o mbus-protocol-aux.o mbus-serial-windows.o -o mbus.dll
gcc -I "../" -o mbus-serial-request-data mbus-serial-request-data.c -lmbus -L.
gcc -I "../" -o mbus-serial-scan-secondary mbus-serial-scan-secondary.c -lmbus -L.
gcc -I "../" -o mbus-serial-scan mbus-serial-scan.c -lmbus -L.
gcc -I "../" -o mbus-serial-select-secondary mbus-serial-select-secondary.c -lmbus -L.
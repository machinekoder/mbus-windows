# run the soc
socat -d -d pty,link=${HOME}/.wine/dosdevices/com1,raw,echo=1 "exec:./test.pl,pty,raw,echo=1"


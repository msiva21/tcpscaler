CFLAGS = -Wall

all: tcpserver tcpclient udpclient

tcpclient.o: tcpclient.c common.h utils.h

udpclient.o: udpclient.c common.h utils.h

tcpserver: tcpserver.o
	$(CC) -levent -o $@ $<

tcpclient: tcpclient.o
	$(CC) -levent -lm -o $@ $<

udpclient: udpclient.o
	$(CC) -levent -lm -o $@ $<

clean:
	rm -f *.o tcpserver tcpclient udpclient

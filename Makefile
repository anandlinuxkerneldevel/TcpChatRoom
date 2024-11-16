CFLAGS = -O0 -g
all: tcpchatclient tcpchatserver

tcpchatclient: tcpchatclient.c tcpchatclient.h
	$(CC) $(CFLAGS) -o tcpchatclient tcpchatclient.c

tcpchatserver: tcpchatserver.c tcpchatserver.h
	$(CC) $(CFLAGS) -o tcpchatserver tcpchatserver.c

clean:
	$(RM) tcpchatclient tcpchatserver

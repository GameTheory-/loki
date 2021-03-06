SRC_LOKI := loki_flash.c loki_patch.c loki_find.c loki_unlok.c main.c
OBJ_LOKI = $(SRC_LOKI:.c=.o)
MODULE_LOKI := loki_tool

CFLAGS += -g -static -Wall
#$(LDFLAGS) +=

all: $(MODULE_LOKI)

host: CC := gcc
host: $(MODULE_LOKI)

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

$(MODULE_LOKI): $(OBJ_LOKI)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

strip:
	$(CC_STRIP) --strip-unneeded $(MODULE_LOKI)
	$(CC_STRIP) --strip-debug $(MODULE_LOKI)

clean:
	rm -f *.o
	rm -f loki_tool

.phony: host all

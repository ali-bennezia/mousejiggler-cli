# Paramètres
TARGET = ./bin/mousejiggler-cli.exe
CC = gcc

# Options
CFLAGS = -Wall -O2
LDFLAGS =

# Fichiers
SRCS = ./src/main.c
OBJS = ${SRCS:.c=.o}
DEPS = 
INCLUDE = 

.PHONY: all clean

all: $(TARGET)

clean:
	if exist .\bin\mousejiggler-cli.exe ( DEL .\bin\mousejiggler-cli.exe )
	del /Q /S src\*.o

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@ 

$(TARGET): $(OBJS)
	if not exist bin ( mkdir bin )
	$(CC) $^ -o $@ $(LDFLAGS)
#############################################################################
# File name:  Makefile
# Author:     chadd williams
# Date:       Sept 1, 2021
# Class:      CS360
# Assignment: 
# Purpose:    
#############################################################################

#CC=clang
CC=gcc
CFLAGS=-g -Wall
TARGETS=bin bin/main
VALGRIND_FLAGS=-v --leak-check=yes --track-origins=yes --leak-check=full --show-leak-kinds=all
ENSCRIPT_FLAGS=-C -T 2 -p - -M Letter -Ec --color -fCourier8

all: bin ${TARGETS}

bin:
	mkdir -p bin

# Use Automatic variables to generate rules
# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html
bin/%: bin/%.o
	${CC} -o $@ ${CFLAGS} $^

bin/%.o: src/%.c bin
	${CC} -c -o $@ ${CFLAGS} $<

# Custom rules
#bin/main: bin bin/main.o
#	${CC} -o bin/main ${CFLAGS} bin/main.o

#bin/main.o: src/main.c
#	${CC} -c -o bin/main.o ${CFLAGS} src/main.c

valgrind: bin/main
	valgrind ${VALGRIND_FLAGS} bin/main

printAll:
	enscript ${ENSCRIPT_FLAGS} src/main.c  | ps2pdf - bin/main.pdf

clean:
	rm -f ${TARGETS} bin/*.o

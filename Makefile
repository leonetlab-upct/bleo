CXX=gcc
CFLAGS=-O3 -Wall
#LFLAGS=-lbpf

#
# Local definitions
#
COPTS=$(CFLAGS)

#
# Targets
#
default : tracer updatemap setprop.o

updatemap.o: updatemap.c
	$(CXX) -c $(COPTS) updatemap.c

updatemap: updatemap.o
	$(CXX) -o updatemap updatemap.o -lbpf

setprop.o: setprop.c
	clang -target bpf -O2 -g -c setprop.c -o setprop.o

tracer.o: tracer.c
	$(CXX) -c $(COPTS) tracer.c

tracer: tracer.o
	$(CXX) -o tracer tracer.o -lbpf

clean:
	rm *.o updatemap tracer 

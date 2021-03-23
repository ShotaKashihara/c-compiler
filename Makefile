CFLAGS=-std=c11 -g -static

9cc: 9cc.c

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

test_in_docker:
	./script/docker_run "make test"

.PHONY: test clean test_in_docker

all:
	gcc ucg.c -o ucg

run: all
	./ucg

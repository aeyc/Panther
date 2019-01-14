all:
	lex Panther.l
	yacc -d Panther.y
	gcc -o Panther y.tab.c

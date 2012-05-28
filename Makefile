
all:
	flex -P gr regular_grammar.l
	flex -P fa finite_automata.l
	gcc -g -std=c99 -pedantic -Wall -Wextra lex.gr.c lex.fa.c rg2nfa.c
	rm *.gr.* *.fa.*

#include "List.c"

// adicionar elementos na lista
void append(List *list, int var);
void putFirst(List *list, int var); // TODO

// remover elementos da lista
void pop(List *list);
void popIndex(List *list, int index);
void removeFirst(List *list, int index); // TODO
void removeElement(List *list, int var); // TODO

// Ler elementos da Lista
int get(List *list, int index);
void printList(List *list);

// Escrever em elementos da lista
void *getNode(List *list, int index);

// list tools
void freeList(List *list);

// Ordenar lista
void bubblesort(List *list);
void troca(Node *x, Node *y);

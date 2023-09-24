#include <stdio.h>
#include <stdlib.h>



typedef struct Node {
  int x;
  struct Node *next;
} Node;

typedef struct List {
  Node *first;
  Node *last;
  int qt;
  void (*append)(struct List *, int);
  void (*pop)(struct List *);
  void (*popIndex)(struct List *, int);
  int (*get)(struct List *, int);
  void (*printList)(struct List *);
  void (*freeList)(struct List *);
  void (*bubble)(struct List *);

} List;

List list() { // inicializar lista
  List list;

  list.first = NULL;
  list.last = NULL;
  list.qt = 0;
  list.append = append;
  list.pop = pop;
  list.popIndex = popIndex;
  list.get = get;
  list.printList = printList;
  list.freeList = freeList;
  list.bubble = bubblesort;

  return list;
}

void append(List *list, int var) { // adicionar elementos no final da lista
  Node *newNode = (Node *)malloc(sizeof(Node));
  newNode->x = var;
  newNode->next = NULL;
  if (list->first == NULL) {
    list->first = newNode;
    list->last = newNode;
    list->qt += 1;
  } else {
    list->last->next = newNode;
    list->last = newNode;
    list->qt += 1;
  }
}

void popIndex(List *list, int index) { // remover elementos de um "index" lista
  Node *node = list->first;
  if (index == 0) {
    Node *del = node;
    list->first = node->next;
    free(del);
    return;
  }
  for (int i = 0; i < index - 1; i++) {
    node = node->next;
  }
  Node *newNext = (node->next)->next;
  Node *del = node->next;
  node->next = newNext;
  if (index == (list->qt) - 1) {
    list->last = node;
    list->last->next = NULL;
  }
  free(del);
}

void pop(List *list) { // remover ultimo elemento da lista
  popIndex(list, (list->qt) - 1);
}

int get(List *list, int index) { // ler "index" da lista
  Node *node = list->first;
  for (int i = 0; i < index; i++) {
    node = node->next;
  }
  return node->x;
}


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


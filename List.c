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


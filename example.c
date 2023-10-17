#include <stdio.h>
#include <stdlib.h>
#include "List.h"

int main(void) {

    List lista = list();
    // List *self = &lista;

    lista.append(&lista, 45);
    lista.append(&lista, 1);
    lista.append(&lista, 8);
    lista.append(&lista, 76);

    lista.printList(&lista);

    lista.bubble(&lista);


    lista.printList(&lista);
    
    return 0;
}
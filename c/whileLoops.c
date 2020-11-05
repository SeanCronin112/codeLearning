#include <stdlib.h>
#include <stdio.h> 

int main(){
    int index = 1;
    while(index <= 5){
        printf("%d\no", index);
        index++;
    }
    

    /* A do-While Lopo will run everything in the loop before checking the condition. */
    index = 6
    do {
        printf("%d\n", index);
        index++;
    }while(index <= 5)
}


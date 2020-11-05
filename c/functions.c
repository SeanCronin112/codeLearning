#include <stdio.h>
#include <stdlib.h>

/* Void Functions (No Returns )
void sayHi(){
    printf("Hello user!\n");
}

void sayHello(char name []){
    printf("Hello %s\n", name);
}

*/

double cube(double num){
    double result = num * num * num;
    return result;
    printf("Here"); /*Never Touched */
}

int main()
{
    /* Void 
    printf("Top\n");
    sayHi();
    printf("Middle\n");
    sayHello("Tom");
    sayHello("Mike");

    */

    printf("Answer: %f", cube(2.0));


    return 0;
}

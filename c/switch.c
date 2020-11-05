#include <stdlib.h>
#include <stdio.h>

int main(){
    char grade = 'A';

    switch(grade){
        case 'A':
            printf("You did great!\n");
            break;
        case 'B':
            printf("Almost at an A!\n");
            break;
        case 'C':
            printf("You're pushing it!\n");
            break;
        case 'D': 
            printf("So close to failing. You need to get your act together.\n");
            break;
        default :
            printf("Invalid grade.");
    }
}
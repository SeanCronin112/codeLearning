#include <stdio.h>
#include <stdlib.h>

int main(){

    for(int i = 1; i <= 5; i++){
        printf("%d\n", i);
    }

    int luckyNumbers [] = {4, 8, 15, 16, 23, 42};

    for(int i = 0; i < 6; i++){
        printf("%d\n", luckyNumbers[i]);
    }

    return 0;
}

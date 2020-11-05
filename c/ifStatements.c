#include <stdlib.h>
#include <stdio.h>

int max(int num1, int num2){
    int result;
    if(num1 > num2){
        result = num1;
    }
    else{
        result = num2;
    }
    return result;
}

int three_max(int num1, int num2, int num3){
    int result;
    if(num1 >= num2  && num1 >= num3){
        /* Or Syntax: || */
        result = num1;
    }
    else if(num2 >= num1 && num2 >= num3){
        result = num2;
    }
    else{
        result = num3;
    }
}

int trueFalse(int num1, int num2){
    if(num1 > num2){
        printf("False");
    }
    else if (!(num1 > num2)){
        printf("True");
    }
}

int main(){
    
    printf("%d", trueFalse(2, 3));
    return 0;
}
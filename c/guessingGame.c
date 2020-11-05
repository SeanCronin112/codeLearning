#include <stdio.h>
#include <stdlib.h>

int main(){

    int secretNumber = 5;
    int guessLimit = 3;
    int guess;

    while(guess != secretNumber && guessLimit > 0){
        printf("Enter a number: ");
        scanf("%d", &guess);
        if(guess != secretNumber){
            guessLimit--;
        }
    }

    if(guessLimit == 0){
        printf("You lose!\n");
    }
    else
    {
        printf("You win!\n");
    }
    

    return 0;
}
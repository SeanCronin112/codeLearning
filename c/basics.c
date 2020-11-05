#include <stdio.h>
#include <stdlib.h>

int main()
{
    /*printf("   /|\n");
    printf("  / |\n");
    printf(" /  |\n");
    printf("/___|!\n");

    return 0;
    */


    /*
    char characterName[] = "John";
    int characterAge = 35;

    printf("There once was a man names %s\n", characterName);
    printf("He was %d years old.\n", characterAge);

    characterAge = 30;
    printf("He liked the name %s\n", characterName);
    printf("But did not like being %d.\n", characterAge);

    */

    /* Data Types */

    /*int age = 40;
    double gpa = 3.6;
    char grade = 'A';
    char phrase[] = "Giraffe Academy"; */

    /* Printing a Number requires this formatting:
    printf("%d", 500); = integer
    printf("%f", 500.123) = Float
    printf("My favourite %c is %f", myChar, favNum)
    */

    /* Working with Numbers */

    /*
    printf("%d", 5 + 4); = 9

    */

    /* Math Functions
    printf("%f", pow(2, 3));
    printf("%f", sqrt(36));
    printf("%f", ceil(36.3));
    printf("%f", floor(26.8));
    */

    /* Constant
    const int NUM = 5;;
    printf("%d\n", NUM);
    NUM = 8;
    printf("%d", NUM);
    */


    /*
    int age;
    printf("Enter your age:\n");
    scanf("%d", &age);
    printf("Your age is: %d", age);

    double gpa;
    printf("Enter your GPA: ");
    scanf("%lf", &gpa);
    printf("Your GPA is %f", gpa);

    char grade;
    printf("Enter your grade:");
    scanf("%c", &grade);
    printf("Your grade is %c", grade);

    */

    /* This only works for single strings (No Spaces)
    char name[20];
    printf("Enter your name: ");
    scanf("%s", &name);
    printf("Your name is %s", name);#
    */
    /*
    char name[20];
    printf("Enter your name: ");
    fgets(name, 20, stdin);
    printf("Your name is %s", name);
    */


    char colour[20];
    char plural[20];
    char celebrity1[20];
    char celebrity2[20];

    printf("Enter a colour: \n");
    scanf("%s", colour);
    printf("Enter a plural noun: \n");
    scanf("%s", plural);
    printf("Enter a celebrity: \n");
    scanf("%s %s", celebrity1, celebrity2);

    printf("Roses are %s\n", colour);
    printf("Violets are %s\n", plural);
    printf("I love %s %s\n", celebrity1, celebrity2);
}

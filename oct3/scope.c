#include <stdio.h>

char * myfunc1(void)
{
    char mystring[] = "Wabash Always Fights!";
    printf("Inside MyFunc1 is %s: \n", mystring);
    return mystring;

}

void myfunc2(char *ptr)
{
    printf("Inside MyFunc2: %s\n", ptr);

}


int main(void)
{
    char string[] = "Depauw Always Quits";
    printf("In Main: %s\n", string);
    char *ptr;
    ptr = myfunc1();
    myfunc2(string);
    printf("Outside myfunc1: %s\n", ptr);


    return 0;
}
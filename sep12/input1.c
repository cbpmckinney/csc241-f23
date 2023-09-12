#include<stdio.h>

int main(void)
{
    char instring1[] = "%s";
    char instring2[32];
    char outstring1[] = "Please type a string.\n";
    char outstring2[] = "Your string was: %s";

    printf("%s", outstring1);
    scanf("%31s", instring2);

    printf(outstring2, instring2);
    printf("%s", "\n");
    printf("The string is at: %p", &instring2);
    printf("%s", "\n");
    

    return 0;


}
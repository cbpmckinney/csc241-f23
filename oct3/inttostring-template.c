#include <stdio.h>
#include <stdlib.h>


void StringReverse(char *source, char *dest, int length)
{
    /*
    This function should accept two pointers and an integer.  The integer is the length of the string to be reversed, which is located
    starting at source.  The function should reverse the string, with the reversed version located at dest.
    Since the strings are allocated into memory outside this function, this function does not need to return anything.
    */


}

int StringLength(char *string)
{
    /*
    You have already written a function in a previous assignment that computes the length of a string.  Since the StringReverse
    function needs to know a string's length, go ahead and copy that part of the function here.
    */
}

void IntToString(int number, char *dest)
{
    /*
    This function is the meat of the assignment.  It should accept the integer to be converted, and a pointer for where
    in memory to write the converted string.  The converted string should be the reversed version, with the "backwards"
    version (TempString) being a local variable.  As such, IntToString should call StringReverse.
    */

   //char TempString[32]; // Temporary string to hold the backwards version, will be reversed later

    char *TempString = malloc(32 * sizeof(char));

    /* Code to convert the number to a (backwards) string goes here */



    /* Now reverse the string */
    int length = StringLength(TempString);
    StringReverse(TempString, dest, length);

}

int main(void)
{
    /* 
    This is the main function.  It should accept the integer from the user using printf/scanf.
    It should also declare a string, pass the pointer to this string to the appropriate
    functions, do the conversion, and then print it when complete.
    */


    return 0;
}
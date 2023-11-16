#include<stdio.h>

extern float finvsqrt(float number);

int main(void)
{

    float number = 2.0;
    float ans;
    ans = finvsqrt(number);
    printf("The answer is %f", ans);

    return 0;
}
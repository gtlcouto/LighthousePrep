#include <stdio.h>

int main() {
	for(int x=1; x<=100;x++)
	{
		if(x%3 == 0 && x%5 == 0)
		{
			printf("FizzBuzz \n");
		}
		else if(x%3 == 0)
		{
			printf("Fizz \n");
		}
		else if(x%5 == 0)
		{
			printf("Buzz\n");
		}
		else
		{
			printf("%i\n", x);
		}
	}
	return 0;
}

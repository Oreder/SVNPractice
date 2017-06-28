#include <stdio.h>

#define ZERO 0

int main(void)
{
	int n;

	// Input processing
	printf("Input number: ");
	scanf("%d", &n);
	
	// Output processing
	if (n == ZERO)		// CASE: n = 0
		printf("Your number is ZERO");
	else
	{
		if (n > ZERO)	// CASE: positive value
			printf("Number '%d' is POSITIVE", n);		
		else			// CASE: negative value
			printf("Number '%d' is NEGATIVE", n);
	}
	
	return 0;
}
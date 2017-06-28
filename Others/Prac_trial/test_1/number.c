#include <stdio.h>

#define ZERO 0
#define MAX_size 20

// global variable
int gl_var; 

// global array
int gl_arr[MAX_size]; 

// Initialized array
int array[3] = {1, 2, 3};

int main(void)
{
	int n;

	// Global array[size]
    	int size;
	
	// sum of all array's elements
	int SUM = 0; 

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
	
	// Scaning data of array
	printf("\n\nInput size of array: ");
	scanf("%d", &size);

	printf("Input %d elements: ", size);
	for (int i = 0; i < size; i++)
	{
		scanf("%d", &gl_arr[i]);
		SUM += gl_arr[i];
	}

	printf("Sum elements: %d\n", SUM);
	
	return 0;
}
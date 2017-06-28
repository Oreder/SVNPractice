#include <stdio.h>
#include <string.h>

#include "avg.h"
#include "count.h"
#include "err.h"

int main(void)
{
	FILE *f;
	int bug = 0;
	
	printf("\n===== TEST PROCESSING =====\n\n");
	
	// test for modulo err
	if (error("in.txt") != -1)
		bug++;
		
	if (error("in_1.txt") != 1)
		bug++;
	
	if (error("in_2.txt") != 1)
		bug++;
	
	if (error("in_3.txt") != 0)
		bug++;
		
	if (error("in_3.txt") == 0)
	{
		f = fopen("in_3.txt", "r");
		
		if (count(f) != 3) 
			bug++;
		
		fclose(f);
	}
	
	// test for modulo avg
	f = fopen("in_4.txt", "r");
	if (avg(f) != 5)
		bug++;
	fclose(f);
	
	f = fopen("in_5.txt", "r");
	if (avg(f) != 2)
		bug++;
	fclose(f);
	
	// test for modulo count
	f = fopen("in_6.txt", "r");
	if (count(f) != 1)
		bug++;
	fclose(f);
	
	f = fopen("in_7.txt", "r");
	if (count(f) != 1)
		bug++;
	fclose(f);
	
	
	if (bug == 0)
		printf("Test is OK!\n");
	else
		printf("Test is false!\n");
	
	return 0;
}
#include <stdio.h>

#include "avg.h"
//float avg(FILE *f);

int count(FILE *f)		// function count number elements bigger than average
{
	float num, pivot;
	int total = 0;
	pivot = avg(f);		// average
	
	rewind(f);
	
	while (fscanf(f, "%f", &num) == 1)
	{
		if (num >= pivot)
			total++;
	}		// count number satisfied elements
	
	return total;
}

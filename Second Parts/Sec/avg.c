#include <stdio.h>

float avg(FILE *f)
{
	float num, min, max;
	
	rewind(f);
	// set beginning value
	fscanf(f, "%f", &min);
	max = min;
	
    while (fscanf(f, "%f", &num) == 1)		// identify min and max
	{
		if (num > max)
			max = num;
		if (num < min)
			min = num;	
	}
	
	return (min + max)/2;	// average
}
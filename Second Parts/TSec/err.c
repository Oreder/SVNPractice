#include <stdio.h>
#include <string.h>

int error(char filename[10])
{
	FILE *f;
	float num_1, num_2;
	
	f = fopen(filename, "r");
		
	if (!f) 
		return -1;		// File does not exist
	else
	{
		rewind(f);
		if (fscanf(f, "%f%f", &num_1, &num_2) < 2)
			return 1;	// File does not have enough elements
		else
			return 0;	// File has enough elements
		fclose(f);
	}
}
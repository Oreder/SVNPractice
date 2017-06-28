#include <stdio.h>

int count(FILE *f)
{
	float num, min, max, avg;
	int total = 0;
	
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
	
	avg = (min + max)/2;	// average
	rewind(f);
	
	while (fscanf(f, "%f", &num) == 1)
	{
		if (num >= avg)
			total++;
	}		// count number satisfied elements
	
	return total;
}


int main(int argc, char **argv)
{
    float num_1, num_2;
    FILE *f, *g;

    g = fopen("Out.txt", "w");

    if (argc == 1)
    {
        fprintf(g, "No file name input!");
    }
    else
    {
        f = fopen(argv[1], "r");

        if (!f)
            fprintf(g, "File is not existed!");
        else
        {	
            if (fscanf(f, "%f%f", &num_1, &num_2) < 2)
                fprintf(g, "File does not contain enough numbers!");
            else
            {
                fprintf(g, "Number elements bigger than average(min, max): %d", count(f));
            }
            fclose(f);
        }
    }

    fclose(g);
    return 0;
}


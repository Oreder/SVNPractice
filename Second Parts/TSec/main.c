#include <stdio.h>
#include "avg.h"
#include "count.h"

//int count(FILE *f);

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


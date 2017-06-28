#include <stdio.h>

// check file error
int check_file(FILE *f)
{
    int num_1, num_2;

    if (!f)
        return -1;
    else
    {
        if (fscanf(f, "%d %d", &num_1, &num_2) < 2)
                return 1;
        else
            return 0;
    }
}


// procedure choose 2 bigger numbers from file
int get_max(FILE *f, FILE *g)
{
    int max_f, max_s;
    int num;

    if (check_file(f) == 0)
    {
        fscanf(f, "%d %d", &max_f, &max_s);

        rewind(f);

        while (fscanf(f, "%d", &num) == 1)
        {
            if (num > max_f || num > max_s)
            {
                if (num > max_f && num > max_s)
                {
                    if (max_f > max_s)
                        max_s = num;
                    else
                        max_f = num;
                }
                else
                {
                    if (max_f > num)
                        max_s = num;
                    else
                       max_f = num;
                }
            }
        }

        fprintf(g, "Max found: %d and %d\n", max_f, max_s);
		fclose(f);
    }
    else
    {
        if (check_file(f) == -1)
            fprintf(g, "File is not existed!");
        else
        {
			fprintf(g, "File has not enough numbers!");
			fclose(f);
		}
    }
    return 0;
}

int main(void)
{
    FILE *f, *g;
    
	f = fopen("in.txt", "r");
    g = fopen("out.txt", "w");

    get_max(f, g);

    fclose(g);

    return 0;
}


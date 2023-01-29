#include<stdio.h>

void triangle()
{
	unsigned int space=10;

	for(int i=0; i<10; i++) // height of the tree!!
	{
		for(int j=0; j<space; j++)
			printf(" ");
		for(int k=0; k<(2*i+1); k++)
			printf("*");

		space--;
		printf("\n");
	}


}

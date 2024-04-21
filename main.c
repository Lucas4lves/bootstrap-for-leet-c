#include <stdio.h>

int main(int argc, char * argv[])
{
	FILE *fptr;

	fptr = fopen("./input", "r");
	char content[100]; 
	fgets(content, 100, fptr);

	printf("C'mon beecrowd!\n");
	printf("INPUT: %s\n", content);
	return 0;
}


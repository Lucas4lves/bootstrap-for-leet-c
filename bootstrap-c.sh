echo Bootstraping files..

cat <<EOF > ./main.c
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

EOF

cat <<EOF > ./input
$1
EOF

cat <<EOF > ./Makefile
APP_NAME=app
CC_FLAGS=-Wall
build:
	gcc *.c -o \$(APP_NAME) \$(CC_FLAGS) 
clean:
	rm -rf \$(APP_NAME)
run:
	./\$(APP_NAME)
EOF

echo Done.

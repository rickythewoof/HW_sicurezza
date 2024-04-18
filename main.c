#include <stdio.h>
#include <string.h>

void oflow(char* data){
	char buf[64];
	strcpy(buf, data);
	printf("Hello %s\n", buf);
}

int main(int argc, char** argv){
	oflow(argv[1]);
	return 0;
}

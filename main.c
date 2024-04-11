#include <stdio.h>
#include <string.h>

void oflow(char* data){
	char buf[8];
	strcpy(buf, data);
}

int main(int argc, char** argv){
	oflow(argv[1]);
	return 0;
}

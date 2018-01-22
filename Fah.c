#include<stdio.h>

extern long c(long x);

int main(){
	int i;
	for(i=0; i<10; i++)
		printf("%ld\n\n", c(i*10));
	return 0;
}

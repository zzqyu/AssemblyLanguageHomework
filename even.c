#include<stdio.h>
extern int f( long x, long y, long z);
extern long p2( long x);
extern long p3( long x);
int main(){
	int c=0;
	int result;

	for(long x = 700000; x<=718000; x++){
		for(long y = 700000; y<=718000; y++){
			for(long z = 10000; z <= 10100; z++){
				result = f(x,y,z);
				if(result==0) {
					printf("x: %ld, y: %ld, z: %ld, result: %d\n", x,y,z, result);
					c++;
				}
			}
		}
	}
	printf("c = %d\n", c);
	return 0;
}

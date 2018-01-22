#include<stdio.h>
extern int f( long x, long y, long z);
int main(){
	int c=0;
	for(long x = 100000; x<=101000; x++){
		for(long y = 100000; y<=101000; y++){
			for(long z = 141421; z <= 142840; z++){
				if(f(x,y,z)==0) {
					printf("x: %ld, y: %ld, z: %ld, count: %d\n", x,y,z,++c);
				}
			}
		}
	}
	return 0;
}

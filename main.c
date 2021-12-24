#include "getMax.h"
#include "stdio.h"
int main() {
	int arr_A[] = { 1,1,1,2,2,2,3,3,3,3,4,5 };
	int size = 12;
	int outPut = getMax(arr_A, size);
	printf("%d\n", outPut);
}
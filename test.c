#include<stdio.h>

extern int test(int , int);

int test(int a , int b){

	printf("Hello, I am the C function you called\n");

	return a+b;

}

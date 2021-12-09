#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main() {
	printf("WASM Ready!\n");
	printf("--------------------------------\n");
	printf("Hello, World!\n");
	return 1;
}

int getNumber() {
	return 42;
}

int getDoubleNumber(int x) {
	return x * 2;
}

char * greet() {
	return "Hello, World!";
}

char * greetWithName(char * name) {
	char * greeting = "Hello, ";
	strcat(greeting, name);
	return greeting;
}

#include <stdio.h>
//using namespace std;

int main()
{
	char s[100],a;
	FILE *f,*g;

	int nl=0;
	f=fopen("read.txt","r");
	g=fopen("write.txt","w");
	while ((a = fgetc(f) )!= EOF)
	{
		if( a=='/'|| a=='*'|| a=='-'|| a=='+')
			nl++;


	}
	printf("No.of Operators: %d \n",nl);

	fclose(f);

	return 0;
}

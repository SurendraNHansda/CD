#include <stdio.h>
//using namespace std;

int main()
{
	char s[100],a;
	FILE *f;

	int nl=0;
	f=fopen("read.txt","r");
	while ((a = fgetc(f) )!= EOF)
	{
		if(a=='\n')
			nl++;
	}
	printf("No.of New Lines: %d \n",nl);

	fclose(f);

	return 0;
}

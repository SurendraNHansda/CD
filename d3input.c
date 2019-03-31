#include <stdio.h>
//using namespace std;

int main()
{
	char s[100],ab;
	FILE *f,*g;

//hello howdy
	int nl=0;
	f=fopen("read.txt","r");
	ab;
	g=fopen("write.txt","w");

/*	while ((a = fgetc(f) )!= EOF)
	{
		if(a!=' '||a!='\t'||a!='\n')
			fprintf(g, "%c", a);


	}
*/

	fclose(f);
	fclose(g);

void fun() {

//Inside Fun
printf("Hello Fun");
}


	return 0;
}

#include <stdio.h>
//using namespace std;

int main()
{
	char s[100],a;
	FILE *f;

	int nl=0;
	f=fopen("read.txt","r");
	while ((fgets(s,sizeof(s),f) )!= NULL)
	{
		if(s[0]=='/' && s[1]=='/')
			nl++;
	}
	printf("No.of Comment Lines: %d \n",nl);

	fclose(f);

	return 0;
}

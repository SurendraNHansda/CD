#include<bits/stdc++.h>
using namespace std;

int main()
{
	char s[60];
	FILE *f;

	f=fopen("input.txt","w");
	cout<<"Enter a Sentence: "<<endl;
	cin>>s;
	fprintf(f,"%s",s);

	fclose(f);

	return 0;
}

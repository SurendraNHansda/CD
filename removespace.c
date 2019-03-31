#include<stdio.h>
int main(){
	FILE *f1,*f2;
	char ch;
	f1 = fopen("read.txt", "r");
	f2 = fopen("write.txt","w");
	while(1){
		ch=fgetc(f1);
		if(ch == EOF)
		break;
		if(ch!=' ' && ch!='\t' && ch!='\n')
		fputc(ch,f2);
	}
	fclose(f1);
	fclose(f2);
	return 0;
}

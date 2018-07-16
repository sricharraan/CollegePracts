#include<stdio.h>

void main()
{
 int i, roll;
 char name[30];
 FILE *fp;
 fp=fopen("/tmp/guest-zSNu8g/Documents/filename.txt","w");
 if(fp== NULL)
  {
	printf("\nError!! File Not Found");
  }
 else
  {
	for(i=0;i<3;i++)
	{
	 printf("\nEnter the name of the student:");
	 scanf("%s",name);
	 printf("Enter the roll number:");
	 scanf("%d",&roll);
	 fprintf(fp,"%s %d\n",name,roll);
	}	
 }
fclose(fp);
}

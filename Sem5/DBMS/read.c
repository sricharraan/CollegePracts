#include<stdio.h>

void main()
{
 char name[30];
 int roll;
 FILE *fp;
 fp=fopen("/tmp/guest-zSNu8g/Documents/filename.txt","r");
 if(fp==NULL)
   printf("Error while opening the file");
 else
  {
    do
    {	
	fscanf(fp,"%s %d", name, &roll);
	printf("Student Name: %s   Roll No: %d\n",name, roll);
    }while (!feof(fp));
  }
 fclose(fp);
}


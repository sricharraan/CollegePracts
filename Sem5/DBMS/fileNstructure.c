#include<stdio.h>

struct student
{
 char name[30];
 int roll;
 int marks;
};

void main()
{
int i;
struct student s;
FILE *fp;
FILE *fp2;
fp2=fopen("/tmp/guest-zSNu8g/Documents/filename.txt","r");
fp=fopen("/tmp/guest-zSNu8g/Documents/filename.txt","w");
if(fp==NULL)
 {
  printf("Error!! File not Found");
 }
 else
 {
 for(i=0;i<3;i++)
  {
	printf("\nEnter the name of the student:");
	scanf("%s",s.name);
	printf("Enter the roll number:");
	scanf("%d",&s.roll);
	printf("Enter the marks:");
	scanf("%d",&s.marks);
	fwrite(&s,sizeof(s),1,fp);
  }
 }
 printf("\nReading from a file");
 fclose(fp);
 while(fread(&s,sizeof(s),1,fp2)==1)
 {
	printf("\nStudent Name: %s",s.name);
	printf("  Student's Roll No: %d",s.roll);
	printf("  Student Marks: %d",s.marks);
 }
 fclose(fp2);
}

#include<stdio.h>
int send[7]={0},receive[7];

void paritycheck()
{
int e[3],error,i;
e[0]=(receive[0]+receive[2]+receive[4]+receive[6])%2;
e[1]=((receive[1]+receive[2]+receive[5]+receive[6])%2)*2;
e[2]=((receive[3]+receive[4]+receive[5]+receive[6])%2)*4;
error=e[0]+e[1]+e[2];
//printf("\n%d",error);
if(error==0)
 {
  printf("\nCode is error free");
 }
else
 {
  printf("\nCode has some error");
  printf("\nCorrect Code is:");
  if(receive[error-1]==0)
	receive[error-1]=1;
  else
	receive[error-1]=0;
  for(i=0;i<7;i++)
   printf("%d",receive[i]);
 }
}

void parityassign()
{
send[0]=(send[2]+send[4]+send[6])%2;
send[1]=(send[2]+send[5]+send[6])%2;
send[3]=(send[4]+send[5]+send[6])%2;
}

void main()
{
int i,ent[4];
printf("Enter the code to be sent:");
for(i=0;i<4;i++)
  scanf("%d",&ent[i]);
send[2]=ent[0];
send[4]=ent[1];
send[5]=ent[2];
send[6]=ent[3];
parityassign();
printf("\nCode to be sent:");
for(i=0;i<7;i++)
 {
  printf("%d ",send[i]);
 }
printf("\nCheck the code:");
for(i=0;i<7;i++)
 {
  scanf("%d",&receive[i]);
 }
paritycheck();
}

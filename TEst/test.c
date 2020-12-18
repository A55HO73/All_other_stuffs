#include<stdio.h>

#include<stdlib.h>

#include<unistd.h>

int main(void)
{
    int k,j,i;
	for( k=0;k<5;k++)
    {
    	for(i=0;i<20;i++)
    	{
    		usleep(200000-k*50000);
		    system("cls");
		    printf("\n");
			printf("\n");
		    printf("8");
			for( j=0;j<i;j++)
			{
				printf("=");
			}
			printf("0");
			for( j=i+1;j<20; j++)
			{
				printf("=");
			}
			printf("D\n");
	    }
	    for( i=0;i<20;i++)
	    {
		    usleep(200000-k*40000);
		    system("cls");
		    printf("\n");
			printf("\n");
		    printf("8");
			for( j=i+1;j<20;j++)
			{
				printf("=");}
			printf("0");
			for( j=0;j<i;j++)
			{
				printf("=");
			}
			printf("D\n");
	    }
    }
    usleep(200000);
    printf("\n");
    system("cls");
    printf("8");
	for( j=0;j<20;j++)
	{
		printf("=");
	}
	printf("D- _ \n");
    usleep(200000);
    printf(" ");
	for( j=0;j<20;j++)
	{
		printf(" ");
	}
	printf("    _  _  _ \n");
    usleep(200000);
    printf(" ");
	for( j=0;j<20;j++)
	{
		printf(" ");
	}
	printf("       _   _   _ \n");
    usleep(200000);
    system("cls");
}


/*
	Detect Operating System And Distribution
	By Darren Rainey 2017
	https://github.com/DarrenRainey
	https://darrenraineys.co.uk
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main()
{
#ifdef linux
	char buffer[512];
	// Define Distro Names
	char * list = "abcdef";
	char * dbn = "Debian";
	char * ubn = "Ubuntu";
	char * fed = "Fedora";
	char * cnt = "CentOS";
	char * rdh = "RedHat";
	char * kal = "Kali";
	// END OF DISTRO NAMES
	FILE * fp = fopen("/etc/issue.net", "r");
	if(fp == NULL)
	{
	printf("ERROR : Unable to open file");
	}
	fgets(buffer, sizeof(buffer), fp);
	int a = strstr(buffer,dbn);
	int b = strstr(buffer,kal);
	int c = strstr(buffer,ubn);
	int d = strstr(buffer,rdh);
	int e = strstr(buffer,cnt);
	int f = strstr(buffer,fed);
	printf("OS BANNER : %s\n",buffer);

	if(a != 0)
	{
	printf("Detected Debian Linux\n");
	}

	if(b != 0)
	{
	printf("Detected Kali Linux\n");
	}

	if(c != 0 )
	{
	printf("Detected Ubuntu Linux\n");
	}

	if(d != 0)
	{
	printf("Detected Redhat Linux\n");
	}

	if(e != 0)
	{
	printf("Detected CentOS Linux\n");
	}

	if(f != 0)
	{
	printf("Detected Fedora Linux\n");
	}

	printf("Attempting To Get Username\n");
	printf("Username : %s\n",getlogin());
	printf("Attempting To Get Hostname\n");
	char hostname[1024];
	FILE * hostnamebuffer = fopen("/etc/hostname", "r");
	fgets(hostname, sizeof(hostname), hostnamebuffer);
	printf("Hostname : %s\n",hostname);
#endif

#ifdef _WIN32
	printf("Detected Windows Based OS\n");
#endif

}

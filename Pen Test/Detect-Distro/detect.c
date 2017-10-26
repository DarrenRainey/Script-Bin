/*
  Code By Darren Rainey 2017
  https://github.com/DarrenRainey
  https://darrenraineys.co.uk
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
        char cdistro[256];
        char * dbn = "Debian";
        FILE * readbuff = fopen("/etc/issue.net", "r");
        fgets(cdistro, sizeof(cdistro), readbuff);

        printf("Banner is : %s\n",cdistro);
        if(strstr(readbuff,dbn) == 0 )
        {
        printf("This is a Debian based distro\n");
        }
        return 0;
}

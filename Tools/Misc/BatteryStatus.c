/*
  CODE BY DARREN RAINEY 2018 - https://GitHub.com/DarrenRainey
  DISPLAYS BASIC BATTERY INFORMATION GATHERED FROM THE LINUX KERNEL
  TESTED ON ANDROID 7 - LinageOS
  
  MAY REQUIRE ADAPTION TO YOUR DEVICE
*/

#include <stdio.h>

int batteryStatus()
{
        char buffer[1024];
        FILE * batteryFile = fopen("/sys/class/power_supply/battery/health", "r");
        if(batteryFile == NULL)
        {
                return -1;
        }
        fgets(buffer, sizeof(buffer), batteryFile);
        printf("Battery Health\t\t|\t %s",buffer);
        fclose(batteryFile);

        batteryFile = fopen("/sys/class/power_supply/battery/status", "r");
        if(batteryFile == NULL)
        {
                return -1;
        }
        fgets(buffer, sizeof(buffer), batteryFile);
        printf("Battery Status\t\t|\t %s",buffer);
        fclose(batteryFile);

        batteryFile = fopen("/sys/class/power_supply/battery/type", "r");
        if(batteryFile == NULL)
        {
                return -1;
        }
        fgets(buffer, sizeof(buffer), batteryFile);
        printf("Battery Type\t\t|\t %s",buffer);
        fclose(batteryFile);

        batteryFile = fopen("/sys/class/power_supply/battery/capacity", "r");
        if(batteryFile == NULL)
        {
                return -1;
        }
        fgets(buffer, sizeof(buffer), batteryFile);
        printf("Battery Capacity\t|\t %s",buffer);
        fclose(batteryFile);

        batteryFile = fopen("/sys/class/power_supply/battery/technology", "r");
        if(batteryFile == NULL)
        {
                return -1;
        }
        fgets(buffer, sizeof(buffer), batteryFile);
        printf("Battery Tech\t\t|\t %s",buffer);
        fclose(batteryFile);

}

int main()
{
        batteryStatus();
}

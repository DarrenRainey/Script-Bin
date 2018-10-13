#!/bin/sh
# CODE BY DARREN RAINEY 2018 - https://GitHub.com/DarrenRainey
# USAGE ./Get-Facebook-ID.sh USERNAME

GETID=$(curl -q https://www.facebook.com/$1 | tr ' ' '\n' |sed 's/"/ /g' | grep fb://profile | head -n 1  | awk '{print $2}')
GETNAME=$(curl -q https://www.facebook.com/$1 |  perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si' | sed 's/| Facebook//g')

if [[ $GETID != *"profile"* ]];then
        echo -e "\e[31m[ERROR] FAILED TO GET PROFILE ID - MANUAL LOGIN REQUIRED\e[0m"
else
        echo "NAME | $GETNAME"
        echo "FBID | $GETID"
fi

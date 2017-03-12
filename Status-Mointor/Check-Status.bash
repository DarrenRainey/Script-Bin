#!/bin/bash
# Usage bash Check-Status.bash 127.0.0.1

fping -c1 -t300 $1 2>/dev/null 1>/dev/null
if [ "$?" = 0 ]
then
  echo -e "\e[92mONLINE\e[39m"
else
  echo -e "\e[91mOFFLINE\e[39m"
fi

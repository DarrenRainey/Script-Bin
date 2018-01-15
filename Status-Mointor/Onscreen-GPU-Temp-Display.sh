# Script By Darren Rainey 2018 https://github.com/DarrenRainey
notify-send "$(echo GPU TEMPERATURE : $(sensors | grep amdgpu -A 3 | grep temp | awk '{print $2}' | sed '/+//g'))"

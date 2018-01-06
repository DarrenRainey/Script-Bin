$TIME=60
i=$TIME; while [ $i -gt -1 ]; do clear && echo -e '\n\n\n\t\t\t\t\t\t\t\t' $i  SECONDS REMAINING | figlet -w 1000 && echo -e '\n\n\n\n\n\n'; i=`expr $i - 1`; sleep 1;  done

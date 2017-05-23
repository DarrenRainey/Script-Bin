	echo "#################################"
	echo "#   Program By DarrenRainey     #"
	echo "#     Copyright 2016            #"
	echo "#################################"
	echo ""
	echo Please enter file name
	cat $1 | '{print $3}' | sed "s/addr=//g" | sed 's/\"//g' | tail -n +6 | head -n -5

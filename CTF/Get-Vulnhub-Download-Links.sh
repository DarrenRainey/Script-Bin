#	https://github.com/DarrenRainey/Script-Bin
#	USAGE ./Get-Vulnhub-Download-Links.sh {ova, zip, 7z or torrent} TO DOWNLOAD A SPECIFIC FORMAT

curl https://www.vulnhub.com/ >> raw.tmp
#cat raw.tmp | grep entry/ | sed 's/<[^>]\+>//g;/^$/d;s/^[ \t]*//'

# GET DOWNLOAD LINKS
#cat raw.tmp | grep Download | sed 's/"/ /g' | grep download.vulnhub | grep ".ova</a>" | awk '{print $5}'
FLAGS=""

if [ $1 == "ova" ]
then
	FLAGS="-e ".ova""
	cat raw.data | grep Download | sed 's/"/ /g' | grep download.vulnhub | grep $FLAGS | awk '{print $5}' | sed '/torrent/d'
elif [ $1 == "torrent" ]
then
	FLAGS="-e ".torrent""
elif [ $1 == "zip" ]
then
	FLAGS="-e ".zip""
	cat raw.data | grep Download | sed 's/"/ /g' | grep download.vulnhub | grep $FLAGS | awk '{print $5}' | sed '/torrent/d'
elif [ $1 == "7z" ]
then
	FLAGS="-e ".7z""
	cat raw.data | grep Download | sed 's/"/ /g' | grep download.vulnhub | grep $FLAGS | awk '{print $5}' | sed '/torrent/d'
else
	FLAGS="-e ".ova" -e ".zip" -e ".7z" -e ".torrent""
	cat raw.data | grep Download | sed 's/"/ /g' | grep download.vulnhub | grep $FLAGS | awk '{print $5}'
fi

rm *.tmp 2>/dev/null

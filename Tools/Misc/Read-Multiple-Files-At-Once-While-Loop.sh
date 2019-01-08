paste File-1.txt File-2.txt | while IFS="$(printf '\t')" read -r f1 f2
do
        if [ -z "$f2" ]
        then
                break
        fi
		printf 'f1: %s\n' "$f1"
		printf 'f2: %s\n' "$f2"
done

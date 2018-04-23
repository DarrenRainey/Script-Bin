echo $0 FILENAME
grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}' $1

# Script By Darren Rainey
if [ "$#" -ne 2 ]; then
    echo Usage : ./$0 config.bin output.txt
else
openssl enc -d -des-ecb -nopad -K 478DA50BF9E3D2CF -in $1 -out $2
fi

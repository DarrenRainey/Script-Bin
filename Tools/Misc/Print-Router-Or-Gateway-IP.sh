# Assumes only 1 internet connection
ip route | awk 'NR==1{print $3}'

cat /var/log/auth.log | grep user | awk '{print $1, $2, $3, $14, $15}' | grep rhost

# GET A FRESH EMAIL ADDRESS AND SAVE THE COOKIE FOR LATER USE
GETADDRESS=$(curl -s -q -# https://10minutemail.net/address.api.php -c cookie.jar| jq .)

# GET ALL EMAILS FROM THAT ADDRESS
GETMAIL=$(curl -s -q -# https://10minutemail.net/address.api.php -b cookie.jar | jq .)

# PRINT EMAILS IN JSON
jq . "$GETMAIL"

# PRINT YOUR EMAIL ADDRES
echo $(echo $GETADDRESS| jq . | grep '"mail":' | sed 's/"/ /g' | awk '{print $3}')

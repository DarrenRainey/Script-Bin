# GET A FRESH EMAIL ADDRESS AND SAVE THE COOKIE FOR LATER USE
GETADDRESS=$(curl -q -# https://10minutemail.net/address.api.php -c cookie.jar| jq .)

# GET ALL EMAILS FROM THAT ADDRESS
GETMAIL=$(curl https://10minutemail.net/address.api.php -b cookie.jar | jq .)

# PRINT EMAILS IN JSON
jq . "$GETMAIL"

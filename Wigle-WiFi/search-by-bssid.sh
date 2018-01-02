# GET API TOKEN FROM WIGLE.NET/ACCOUNT
# USAGE ./search-by-bssid.bash 00:00:00:00
# API NAME : API TOKEN
API_NAME=""
API_TOKEN=""
curl -H 'Accept:application/json' -u $API_NAME:$API_TOKEN --basic https://api.wigle.net/api/v2/network/search?netid=$1 | jq '.'

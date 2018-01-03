# Note this request generates allot of data you may want to pipe the output to a file or grep for specific information.
curl -X GET --header 'Accept: application/json' 'https://api.wigle.net/api/v2/stats/general' | jq '.'

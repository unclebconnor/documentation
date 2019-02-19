#!/bin/sh
# Replace the API and APP keys below
# with the ones for your account

api_key=<YOUR_API_KEY>
app_key=<YOUR_APP_KEY>

curl -X POST -H "Content-type: application/json" \
-d '{
      "type": "metric alert",
      "query": "THIS QUERY IS INVALID",
      "name": "Bytes received on host0",
      "message": "We may need to add web hosts if this is consistently high.",
      "tags": ["app:webserver", "frontend"],
      "options": {
      	"notify_no_data": true,
      	"no_data_timeframe": 20
      }
}' \
    "https://api.datadoghq.com/api/v1/monitor/validate?api_key=${api_key}&application_key=${app_key}"

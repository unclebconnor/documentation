from datadog import initialize, api

options = {
    'api_key': '<YOUR_API_KEY>',
    'app_key': '<YOUR_APP_KEY>'
}

initialize(**options)

list_id = 4741
name = 'My Updated Dashboard List'

api.DashboardList.update(list_id, name=name)

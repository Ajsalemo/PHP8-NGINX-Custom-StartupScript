# PHP8-NGINX-Custom-StartupScript

A sample that shows how to override the default nginx.conf file in a PHP8 Azure Docker Container to do things such as edit/change headers. This [quickstart](https://docs.microsoft.com/en-us/azure/app-service/quickstart-php?pivots=platform-linux) was used for a quick basic scaffold for testing.

1. Copy the custom startup script to /home
2. In the Azure Portal go to the Web App -> Configuration -> Startup command
3. Set the value to /home/<your_custom_startup_script_name>.sh
4. Click Save

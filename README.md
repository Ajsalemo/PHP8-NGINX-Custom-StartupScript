# PHP8-NGINX-Custom-StartupScript

A sample that shows how to override the default nginx.conf file in a PHP8 Azure Docker Container to do things such as edit/change headers. This [quickstart](https://docs.microsoft.com/en-us/azure/app-service/quickstart-php?pivots=platform-linux) was used for a quick basic scaffold for testing.

This specific repo removes the X-Powered-By header and the NGINX version from the Server header - but can be further expanded upon through the nginx.conf file.

1. Copy the custom startup script to /home
2. In the Azure Portal go to the Web App -> Configuration -> -> General Settings -> Startup Command
3. Set the value to /home/<your_custom_startup_script_name>.sh
4. Click Save

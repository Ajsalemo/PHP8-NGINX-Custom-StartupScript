#!/bin/sh
echo "Running custom startup script from $PWD.."
echo "Installing nginx-extras.."
apt-get update
apt-get install nginx-extras
# Copy our 'local' nginx.conf to override the generated one on App Service under /etc/nginx/nginx.conf
cp /home/site/wwwroot/nginx.conf /etc/nginx/nginx.conf
# Enter the source directory to make sure the script runs where the user expects
cd /home/site/wwwroot
export NGINX_PORT=8080

if [  -n "$PHP_ORIGIN" ] && [ "$PHP_ORIGIN" = "php-fpm" ]; then
   export NGINX_DOCUMENT_ROOT='/home/site/wwwroot'
   # This needs to be reloaded instead of started for changes to take effect
   service nginx reload
else
   export APACHE_DOCUMENT_ROOT='/home/site/wwwroot'
fi

php-fpm;

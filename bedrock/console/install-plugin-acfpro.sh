#!/bin/sh

#wp core install --url=localhost --title="ByteBible" --admin_name=nic1k --admin_password=nic1k --admin_email=admin@test.local --allow-root

# install plugin ACF Pro
acf_zip_file="$(wp --allow-root plugin path)/advanced-custom-fields-pro.zip"
wget -O ${acf_zip_file} "http://connect.advancedcustomfields.com/index.php?p=pro&a=download&k=b3JkZXJfaWQ9ODI1MTF8dHlwZT1kZXZlbG9wZXJ8ZGF0ZT0yMDE2LTA1LTI4IDA5OjI3OjMw"
wp plugin install ${acf_zip_file} --activate --allow-root
rm ${acf_zip_file}


#!/bin/sh

wp acorn vendor:publish --allow-root
wp acorn package:discover --allow-root
wp acorn vendor:publish --provider="Log1x\AcfComposer\Providers\AcfComposerServiceProvider" --allow-root

wp acorn acf:field CheetSheet --allow-root

wp package install aaemnnosttv/wp-cli-lorem

# Adapted from https://support.advancedcustomfields.com/forums/topic/download-acf-with-wp-cli-on-clean-install/#post-26191

# get plugin path
acf_zip_file="$(wp --allow-root plugin path)/advanced-custom-fields-pro.zip"

# get acf zip file
wget -O ${acf_zip_file} "http://connect.advancedcustomfields.com/index.php?p=pro&a=download&k=b3JkZXJfaWQ9ODI1MTF8dHlwZT1kZXZlbG9wZXJ8ZGF0ZT0yMDE2LTA1LTI4IDA5OjI3OjMw"

# install & activate acf
wp plugin install ${acf_zip_file} --activate --allow-root

# remove zip file
rm ${acf_zip_file}

wp plugin update --all --allow-root
wp plugin install woocommerce --allow-root --activate

#wp
wp post generate --post_type=page --post_title=Homepage --allow-root --count=1

#woocommerce
wp post generate --post_type=page --post_title=Statute --allow-root --count=1
wp post generate --post_type=page --post_title=Contact --allow-root --count=1
wp post generate --post_type=page --post_title=About --allow-root --count=1





#curl -N https://loripsum.net/api/5 | wp post generate --post_content --count=10
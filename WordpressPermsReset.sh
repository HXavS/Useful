#!/bin/bash

#File Ownership
find /var/www/ -exec chown www-data:www-data {} \;

#Reset dir Perms
find /var/www/ -type d -exec chmod 755 {} \;

#Reset file Perms
find /var/www/ -type f -exec chmod 644 {} \;

#secure wp-config Perms
find /var/www/ -name "wp-config.php" -exec chmod 600{} \;

#Reset htaccess Perms
find /var/www/ -name ".htaccess" -exec chmod 600 {} \;

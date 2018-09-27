Stage Apache and PHP on Ubuntu Linux.  Add the following to the User Data or Custom Extension field of the instance.

PHP file displays all headers received by the web server which can be useful for XFF diagnostics.


#!/bin/bash

sudo apt-get update &&

sudo apt-get install -y apache2 php7.0 libapache2-mod-php7.2 &&

sudo rm -f /var/www/html/index.html &&

sudo wget -O /var/www/html/index.php https://raw.githubusercontent.com/jasonmeurer/showheaders/master/showheaders.php &&

echo "done"

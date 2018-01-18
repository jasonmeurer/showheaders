Stage Apache and PHP on Ubuntu Linux.  Add the following to the User Data or Customer Extension field of the instance.

PHP file displays all headers received by the web server which can be useful for XFF diagnostics.

#!/bin/bash

sudo apt-get update &&

apt-get install -y apache2 php7.0 libapache2-mod-php7.0 &&

rm -f /var/www/html/index.html &&

wget -O /var/www/html/index.php https://raw.githubusercontent.com/jasonmeurer/showheaders/master/showheaders.php &&

echo "done"

#! /bin/bash
apt-get update
apt-get install -y apache2 php7. ibapache2-mod-php7.
wget -O /var/www/html/showheaders.php https://raw.githubusercontent.com/jasonmeurer/azure-appgw-stdv2/master/showheaders.php
systemctl restart apache2

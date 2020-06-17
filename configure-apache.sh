#!/bin/bash
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install apache2
sudo apt install git
sudo chmod a+rwx /var/www
sudo chmod a+rwx /etc/apache2/sites-available
sudo a2enmod ssl
sudo a2enmod headers
cd /etc/apache2/sites-available
rm 000-default.conf
rm default-ssl.conf
sudo a2dissite 000-default.conf
git clone https://github.com/eduardstal/apache-config.git
mv -i /etc/apache2/sites-available/apache-config/website.conf /etc/apache2/sites-available/website.conf
rm -R apache-config
cd /var/www/
rm -R html
mkdir website.com

#chmod +x configure-apache.sh

#!/bin/bash

# install Apache and PHP (in a loop because a lot of installs happen
# on VM init, so won't be able to grab the dpkg lock immediately)
sudo su -
apt-get -y update
apt-get -y update
apt-get -y install apache2 php
apt-get -y install apache2 php

cd /var/www/html/
wget https://raw.githubusercontent.com/elenazzz2812/ElenaSandBox/master/example.php 
wget https://raw.githubusercontent.com/elenazzz2812/ElenaSandBox/master/index.php 
rm index.html
# restart Apache
apachectl restart


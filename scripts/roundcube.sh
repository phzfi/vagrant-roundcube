#!/bin/bash

echo 'roundcube-core roundcube/mysql/admin-pass select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/mysql/app-pass select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/app-password-confirm select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/database-type select mysql' | sudo debconf-set-selections
echo 'roundcube-core roundcube/dbconfig-install select true' | sudo debconf-set-selections

apt-get install -y roundcube roundcube-mysql roundcube-plugins courier-imap

sed -i -e 's/^\#\s\{3,\}Alias/Alias/' /etc/apache2/conf-available/roundcube.conf

service apache2 reload

echo "Roundcube installed successfully: http://192.168.66.67/roundcube"


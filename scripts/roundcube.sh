#!/bin/bash

echo 'roundcube-core roundcube/mysql/admin-pass select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/mysql/app-pass select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/app-password-confirm select password' | sudo debconf-set-selections
echo 'roundcube-core roundcube/database-type select mysql' | sudo debconf-set-selections

apt-get install -y roundcube roundcube-mysql




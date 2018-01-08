#!/usr/bin/env bash
yum install php-devel
wget https://xdebug.org/files/xdebug-2.2.7.tgz
tar -zxvf xdebug-2.2.7.tgz
mv xdebug-2.2.7 xdebug
mv xdebug.ini /etc/php.d/xdebug.ini
cd xdebug && phpize && ./configure && make && make install
mkdir -p /tmp/xdebug/
chmod -R 777 /tmp/xdebug
/etc/init.d/httpd restart
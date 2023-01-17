#!/bin/bash 
yum install httpd -y 
service httpd start 
chkconfig httpd on 
echo "Hello, world" > /var/www/html/index.html 
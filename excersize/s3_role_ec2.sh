#!/bin/bash

echo "==============START=============="
yum -y update
yum -y install httpd
aws s3 sync s3://gegham.papyan.www /var/www/html
sudo service httpd start
chkonfig httpd on
echo "UserData executed on $(date)" >> /var/www/html/log.txt
echo"==============END=============="

# gegham.papyan.www-i mej petqa lini index html file

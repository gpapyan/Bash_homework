#!/bin/bash

echo "==============START=============="
yum -y update
yum -y install httpd
echo "<html><body bgcolor=green><center><h1><p><font color=black>=== Hi Bro ===</p></h1></center></body></html>" > /var/www/html/index.html
sudo service httpd start
chkonfig httpd on
cat tested.txt
echo "UserData executed on $(date)" >> /var/www/html/log.txt
echo"==============END=============="


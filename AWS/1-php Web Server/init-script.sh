#!/bin/bash

yum update -y 
yum -y install httpd
yum -y install httpd-tools
yum install -y php72 mariadb-server php72-mysqlnd

service httpd start
chkconfig httpd on

usermod -a -G apache ec2-user

chown -R ec2-user:apache /var/www
chmod 2775 /var/www

find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;

cd /var/www/html


# ec2 insatnces have a metada service that provides informations about the instance 
curl http://169.254.169.254/latest/meta-data/instance-id -o index.html

curl https://raw.githubusercontent.com/hashicorp/learn-terramino/master/index.php -O

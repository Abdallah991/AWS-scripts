# !/bin/bash
# This script for launching instance
# updating packages without asking for confirmation
yum update -y 
# install and start apache
yum install -y httpd
systemctl start httpd
systemctl enable httpd
# test apache
echo "<h1/>Hello world from $(hostname -f)</h1>" > /var/www/html/index.html

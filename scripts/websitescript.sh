#!/bin/bash

# Installing dependencies
echo "##########"
echo " Installing Packages"
echo "##########"
sudo yum install wget unzip httpd -y > /dev/null
echo 

#Start and enable Service
echo "##########"
echo " Start and enable HTTPD Service"
echo "##########"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating tmp directories
echo "#########"
echo " starting Artifact Deployment"
echo "##########"
mkdir -p tmp/webfiles
cd /tmp/webfiles
echo

#Unzip Process starting
echo "##########"
wget https://www.tooplate.com/zip-templates/2121_wave_cafe.zip > /dev/null
unzip 2121_wave_cafe.zip
sudo cp -r 2121_wave_cafe/* /var/www/html/
echo

#Bounce Service
echo "##########"
echo "Restarting httpd service"
systemctl restart httpd
echo

#clean up
echo "########"
echo " Removing Temporary files"
echo "##########"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/

#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<html><h1><p> Welcome to TCC website.<br> You are redirected to ${HOSTNAME} to see how the load balancer is sharing the traffic. Temateu is testing the website and the site will be down for a minutes</p></h1></html>" > /var/www/html/index.html

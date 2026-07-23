#!/bin/bash

sudo apt update -y
sudo apt install nginx -y
systemctl start nginx
systemctl enable nginx

cd /var/www/html
rm -rf *

git clone https://github.com/siddhidhawade7905-sgd/MyPortfolio.git .
systemctl restart nginx
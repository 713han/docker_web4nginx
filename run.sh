docker run --name nginx_ubuntu -v ~/docker/www/:/home/www/ -v ~/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d 713han/ubuntu-nginx-php

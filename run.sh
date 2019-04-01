docker run --name php_ubuntu -v ~/docker/www/:/home/www/ -v ~/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d 713han/ubuntu_nginx_php7

docker run --name php_ubuntu --link mysql_5.7 -v ~/docker/www/:/home/www/ -v ~/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d 713han/ubuntu_nginx_php7
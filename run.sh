docker stop php_ubuntu
docker rm php_ubuntu
# docker run --name php_ubuntu --link mysql_5.7 -v ~/docker/home/www-data:/home/www-data -v ~/docker/www/:/home/www/ -v ~/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d 713han/ubuntu_nginx_php7
docker run --name php_ubuntu --link mysql_5.7 -v ~/docker/www/:/home/www/ -v ~/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d 713han/ubuntu_nginx_php7
docker exec php_ubuntu /bin/su -c "composer global require 'fxp/composer-asset-plugin:~1.3'" - www-data
docker exec php_ubuntu chown www-data:www-data /home/www/default/batch/clean_ah_api.sh
docker exec php_ubuntu chmod +x /home/www/default/batch/clean_ah_api.sh
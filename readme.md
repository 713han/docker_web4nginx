# How to use (ubuntu)
```
cd ~
git clone git@github.com:713han/docker_sample_website.git
sudo cp -r docker_sample_website /home/www/default
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
docker run --name php_nginx_ubuntu -v /home/www:/home/www -v /etc/nginx/sites-enabled/:/etc/nginx/sites-enabled/ -p 80:80 -d yamrd2/ubuntu-16_nginx_php7-web
```

```
cd ~
git clone git@github.com:713han/docker_sample_website.git
docker run --name php_nginx_ubuntu -v /home/hans/docke/www/:/home/www/ -v /home/hans/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d yamrd2/ubuntu-18_nginx
```
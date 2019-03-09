# How to use (ubuntu)

## install docker for ubuntu

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce 
sudo apt install docker-ce
sudo systemctl status docker

# 檢查使用者是否有在 docker 群組內
groups
sudo usermod -aG docker ${USER}
groups
sudo usermod -aG docker hans
groups
```

## run docker

```
cd ~
git clone git@github.com:713han/docker_web4nginx.git
docker run --name php_nginx_ubuntu -v /home/hans/docke/www/:/home/www/ -v /home/hans/docker/hosts/:/etc/nginx/sites-enabled/ -p 80:80 -d yamrd2/ubuntu-18_nginx
```

## reference

[How To Install and Use Docker on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)

## old document

```
cd ~
git clone git@github.com:713han/docker_sample_website.git
sudo cp -r docker_sample_website /home/www/default
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
docker run --name php_nginx_ubuntu -v /home/www:/home/www -v /etc/nginx/sites-enabled/:/etc/nginx/sites-enabled/ -p 80:80 -d yamrd2/ubuntu-16_nginx_php7-web
```


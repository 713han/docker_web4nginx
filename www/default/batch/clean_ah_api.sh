rm -rf /home/www/ah-api/webroot
git clone git@tmnewa.github.com:hans4tmnewa/ah-api-php.git /home/www/ah-api/webroot
cd /home/www/ah-api/webroot

if [ -n "$2" ]; then
        git checkout $2
fi

# composer update
composer install

case "$1" in
        prod)
                php init --env=Production --overwrite=All
                echo $1
                ;;
        test)
                php init --env=Test --overwrite=All
                echo $1
                ;;
        dev)
                php init --env=Development --overwrite=All
                echo $1
                ;;
        *)
                echo "./clean_ah_api [dev/test/prod] [branch name]"
                ;;
esac


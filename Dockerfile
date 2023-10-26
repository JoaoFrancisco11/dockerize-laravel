####################################################
######## Dockerfile to use laravel #################
####################################################
# Image base
FROM php:7.4-cli

# Set the working directory inside the container
WORDKIR /var/www

# update packages and install the libzip library
RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-isntall zip

# Download Composer and install it
RUN php -r "copy('https://getcomposer.org/isntaller', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

# Create a new laravel project using composer
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

# Set the entry point for the container, wich starts the laravel server
ENTRYPOINT["php","laravel/artisan", "serve"]

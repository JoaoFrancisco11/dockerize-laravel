# Dockerize-laravel

The repository serves as an illustration of framework encapsulation. It involves creating a Docker image with Laravel, and connecting to the exposed localhost port allows users to access the Laravel interface.

Laravel, a popular PHP web application framework, is acclaimed for its elegant syntax and extensive feature set. Key components include Eloquent ORM for efficient database operations and the Artisan console for command-line tasks. The Blade templating engine simplifies view creation, while middleware facilitates HTTP request filtering. Robust routing, built-in authentication, and authorization support, coupled with comprehensive testing tools, make Laravel a versatile choice.

## Dockerfile
First, a Dockerfile was created in Linux using the command: touch Dockerfile. Then, the following file was generated: 
```ruby
# Image base
FROM php:7.4-cli

# Set the working directory inside the container
WORKDIR /var/www

# update packages and install the libzip library
RUN apt-get update && apt-get install libzip-dev -y && docker-php-ext-install zip

# Download Composer and install it
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
	php composer-setup.php && \
	php -r "unlink('composer-setup.php');"

# Create a new laravel project using composer
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

# Set the entry point for the container, wich starts the laravel server
ENTRYPOINT [ "php","laravel/artisan","serve" ]
CMD [ "--host=0.0.0.0" ]
```

## Build
The image build and container creation were carried out using the following image. The image build was already cached since tests had been performed previously.
```ruby
$ docker build -t build-tag folder-where-the-file-is-located
$ docker run -d --name file-name -p 8000:8000 build-tag
```

## Laravel
![Texto Alternativo](https://github.com/JoaoFrancisco11/dockerize-laravel/blob/main/Laravel.png)




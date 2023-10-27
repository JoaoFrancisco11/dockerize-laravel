# Dockerize-laravel

The repository serves as an illustration of framework encapsulation. It involves creating a Docker image with Laravel, and connecting to the exposed localhost port allows users to access the Laravel interface.

Laravel, a popular PHP web application framework, is acclaimed for its elegant syntax and extensive feature set. Key components include Eloquent ORM for efficient database operations and the Artisan console for command-line tasks. The Blade templating engine simplifies view creation, while middleware facilitates HTTP request filtering. Robust routing, built-in authentication, and authorization support, coupled with comprehensive testing tools, make Laravel a versatile choice.

## Dockerfile
First, a Dockerfile was created in Linux using the command: touch Dockerfile. Then, the following file was generated: 
![Texto Alternativo](https://github.com/JoaoFrancisco11/dockerize-laravel/blob/developer/Dockerfile.png)

## Build
The image build and container creation were carried out using the following image. The image build was already cached since tests had been performed previously.
![Texto Alternativo](https://github.com/JoaoFrancisco11/dockerize-laravel/blob/developer/build-laravel.png)

## Laravel
![Texto Alternativo](https://github.com/JoaoFrancisco11/dockerize-laravel/blob/developer/Laravel.png)




# LAMP-SS4
A LAMP docker setup with PHP composer to create a new Silverstripe project

The php.Dockerfile defines
* the PHP version
* that the docker-php-entrypoint will be needed
* that the composer will be needed

Building the docker container:
`amoser>docker-compose build`

Start it:
`amoser>docker-compose up -d'

Find out the dockers name:
`amoser>docker ps`

Log into the docker shell:
`amoser>docker exec -it <directoryname_web-server_1> /bin/bash`



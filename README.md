# LAMP-SS4
A LAMP docker setup with PHP composer to create a new Silverstripe project

---

The php.Dockerfile defines
* the PHP version
* that the docker-php-entrypoint will be needed
* that the composer will be needed

Building the docker container:
```
amoser>docker-compose build
```

Start it:
```
amoser>docker-compose up -d
```

Find out the dockers name:
```
amoser>docker ps
```

Log into the docker shell:
```
amoser>docker exec -it <directoryname_web-server_1> /bin/bash
```

---

Let's install Silverstripe4:
```
root@eac10e1719f7:/var/www/html# su - www-data
www-data@eac10e1719f7:~$ cd /var/www/html
www-data@eac10e1719f7:~/html$ /usr/local/bin/composer create-project silverstripe/installer <ss4-directoryname>
```

SS4 stores its database information in the `.env` file. If it does not find such a file within the <ss4-directoryname>, it looks for it one path up.

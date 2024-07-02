# OpenText basic Docker Tutorial

## How to get docker in your Linux
- ```curl https://get.docker.com | bash```

## How to sync these files to your disk
- ```git clone git@github.com:neotherack/otx_docker_demo.git```

## How to build your own container image
- ```docker build -t franpache:1.0 -t franpache:latest .```

1. Login to Docker Hub
- ```docker login```

2. Prepare your image
- ```docker image tag franpache:latest franvallejoluna/franpache:latest```

3. Push it
- ```docker push --all-tags franvallejoluna/franpache```

4. Start your containers
- ```docker run -d -v /opt/otx_docker_demo/web1/:/var/www/html/ --name=english_webserver -p 8080:80 franpache```
- ```docker run -d -v /opt/otx_docker_demo/web2/:/var/www/html/ --name=spanish_webserver -p 8081:80 franpache```

5. Connect to the web servers
- [English website](https://localhost:8080)
- [Spanish website](https://localhost:8081)

6. Do some changes in your mapped disk files and check again the contents


## HTTPD example 
docker run -d -v /opt/otx_docker_demo/web1/:/usr/local/apache2/htdocs/ --name=english_webserver -p 8090:80 httpd:2.4
docker run -d -v /opt/otx_docker_demo/web2/:/usr/local/apache2/htdocs/ --name=spanish_webserver -p 8091:80 httpd:2.2

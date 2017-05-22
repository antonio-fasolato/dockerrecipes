docker build -t swagger .

docker run -p 8080:80 -p 8081:81 -p 8082:82 -v /home/tony/Documents/docker-data/swagger/log:/var/log/nginx -v /home/tony/Documents/docker-data/swagger/data:/usr/swagger-data -d swagger

docker run -p 8080:80 -p 8081:81 -v /home/tony/Documents/docker-data/swagger/log:/var/log/nginx -v /home/tony/Documents/docker-data/swagger/data:/usr/swagger-data -ti swagger sh

docker build -t swagger .

docker run -p 8080:80 -p 8081:81 -p 8082:82 -v /home/tony/docker-data/swagger/logs:/var/log/nginx -v /home/tony/docker-data/swagger/data:/usr/swagger-data -d swagger

docker run -p 8080:80 -p 8081:81 -p 8082:82 -v /home/tony/docker-data/swagger/logs:/var/log/nginx -v /home/tony/docker-data/swagger/data:/usr/swagger-data -ti swagger sh

java -jar swagger-codegen-cli-2.2.2.jar generate -l html -i /usr/swagger-data/swagger.json  -o /usr/swagger-data

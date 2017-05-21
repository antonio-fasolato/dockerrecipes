docker build -t swagger .

docker run -p 8080:80 -v /home/tony/Documents/docker-data/swagger/log:/var/log/nginx -d swagger

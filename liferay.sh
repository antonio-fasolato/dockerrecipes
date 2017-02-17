#https://hub.docker.com/r/rsippl/liferay/

#docker run --name 'mysql' -d \
docker run --name 'mysql' \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=lportal \
    -e MYSQL_USER=liferay \
    -e MYSQL_PASSWORD=secret \
    mysql:5.6.30 \
    --character-set-server=utf8 \
    --collation-server=utf8_general_ci

#docker run --name 'liferay' -d \
docker run --name 'liferay' \
    -p 8080:8080 \
    -e DB_KIND=mysql \
    -e DB_HOST=liferaydb \
    -e DB_USERNAME=liferay \
    -e DB_PASSWORD=secret \
	-e SETUP_WIZARD_ENABLED=Y \
    --link mysql:liferaydb \
    rsippl/liferay
